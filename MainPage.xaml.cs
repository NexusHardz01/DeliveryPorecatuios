using Microsoft.Maui.Controls;
using System.Net.NetworkInformation;

namespace Delivery_Porecatu
{
    public partial class MainPage : ContentPage
    {
        private WebView webView;

        public MainPage()
        {
            InitializeComponent();
            webView = this.FindByName<WebView>("WebView");

            CheckInternetAndLoad();
            webView.Navigating += WebView_Navigating;
            webView.Navigated += WebView_Navigated;
        }

        private void CheckInternetAndLoad()
        {
            if (IsInternetAvailable())
            {
                webView.Source = "http://206.62.66.101/delivery/";
            }
            else
            {
                ShowOfflinePage();
            }
        }

        private bool IsInternetAvailable()
        {
            try
            {
                using (var ping = new Ping())
                {
                    var reply = ping.Send("8.8.8.8", 2000);
                    return reply != null && reply.Status == IPStatus.Success;
                }
            }
            catch
            {
                return false;
            }
        }

        private void ShowOfflinePage()
        {
            string offlineHtml = @"
            <html>
            <head>
                <meta name='viewport' content='width=device-width, initial-scale=1.0'>
                <style>
                    body {
                        margin: 0;
                        padding: 0;
                        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                        background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
                        height: 100vh;
                        display: flex;
                        justify-content: center;
                        align-items: center;
                        color: white;
                        text-align: center;
                    }
                    .container { padding: 20px; }
                    .icon { font-size: 80px; margin-bottom: 20px; }
                    h1 { font-size: 24px; margin-bottom: 10px; }
                    p { font-size: 16px; opacity: 0.9; }
                    button {
                        margin-top: 30px;
                        padding: 12px 30px;
                        background: white;
                        border: none;
                        border-radius: 30px;
                        font-size: 16px;
                        font-weight: bold;
                        color: #667eea;
                        cursor: pointer;
                    }
                    button:active { transform: scale(0.98); }
                </style>
            </head>
            <body>
                <div class='container'>
                    <div class='icon'>📡</div>
                    <h1>Sem conexão com a internet</h1>
                    <p>Verifique sua conexão e tente novamente</p>
                    <button onclick='window.location.href = ""maui://reload""'>Tentar novamente</button>
                </div>
            </body>
            </html>";

            webView.Source = new HtmlWebViewSource { Html = offlineHtml };
        }

        private void WebView_Navigating(object? sender, WebNavigatingEventArgs e)
        {
            // Verifica se é o comando de reload vindo da página offline
            if (e.Url.StartsWith("maui://reload"))
            {
                e.Cancel = true;

                // Verifica internet novamente
                if (IsInternetAvailable())
                {
                    webView.Source = "http://206.62.66.101/delivery/";
                }
                else
                {
                    ShowOfflinePage();
                }
                return;
            }

            // Se não tem internet e não está carregando a página offline
            if (!IsInternetAvailable() && !e.Url.Contains("offline"))
            {
                e.Cancel = true;
                ShowOfflinePage();
            }
        }

        private void WebView_Navigated(object? sender, WebNavigatedEventArgs e)
        {
            // Se a navegação falhou por falta de internet
            if (e.Result == WebNavigationResult.Failure && !IsInternetAvailable())
            {
                ShowOfflinePage();
            }
        }

        protected override bool OnBackButtonPressed()
        {
            if (webView.CanGoBack)
            {
                webView.GoBack();
                return true;
            }
            return base.OnBackButtonPressed();
        }
    }
}