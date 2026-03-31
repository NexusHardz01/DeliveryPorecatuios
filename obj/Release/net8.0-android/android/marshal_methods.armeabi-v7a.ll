; ModuleID = 'marshal_methods.armeabi-v7a.ll'
source_filename = "marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [116 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [232 x i32] [
	i32 10166715, ; 0: System.Net.NameResolution.dll => 0x9b21bb => 94
	i32 42639949, ; 1: System.Threading.Thread => 0x28aa24d => 108
	i32 67008169, ; 2: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 33
	i32 72070932, ; 3: Microsoft.Maui.Graphics.dll => 0x44bb714 => 47
	i32 117431740, ; 4: System.Runtime.InteropServices => 0x6ffddbc => 103
	i32 165246403, ; 5: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 52
	i32 182336117, ; 6: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 70
	i32 195452805, ; 7: vi/Microsoft.Maui.Controls.resources.dll => 0xba65f85 => 30
	i32 199333315, ; 8: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xbe195c3 => 31
	i32 205061960, ; 9: System.ComponentModel => 0xc38ff48 => 83
	i32 280992041, ; 10: cs/Microsoft.Maui.Controls.resources.dll => 0x10bf9929 => 2
	i32 298918909, ; 11: System.Net.Ping.dll => 0x11d123fd => 95
	i32 317674968, ; 12: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 30
	i32 318968648, ; 13: Xamarin.AndroidX.Activity.dll => 0x13031348 => 48
	i32 336156722, ; 14: ja/Microsoft.Maui.Controls.resources.dll => 0x14095832 => 15
	i32 342366114, ; 15: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 59
	i32 356389973, ; 16: it/Microsoft.Maui.Controls.resources.dll => 0x153e1455 => 14
	i32 367780167, ; 17: System.IO.Pipes => 0x15ebe147 => 89
	i32 379916513, ; 18: System.Threading.Thread.dll => 0x16a510e1 => 108
	i32 385762202, ; 19: System.Memory.dll => 0x16fe439a => 92
	i32 395744057, ; 20: _Microsoft.Android.Resource.Designer => 0x17969339 => 34
	i32 435591531, ; 21: sv/Microsoft.Maui.Controls.resources.dll => 0x19f6996b => 26
	i32 442565967, ; 22: System.Collections => 0x1a61054f => 80
	i32 450948140, ; 23: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 58
	i32 469710990, ; 24: System.dll => 0x1bff388e => 111
	i32 498788369, ; 25: System.ObjectModel => 0x1dbae811 => 100
	i32 500358224, ; 26: id/Microsoft.Maui.Controls.resources.dll => 0x1dd2dc50 => 13
	i32 503918385, ; 27: fi/Microsoft.Maui.Controls.resources.dll => 0x1e092f31 => 7
	i32 513247710, ; 28: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 42
	i32 539058512, ; 29: Microsoft.Extensions.Logging => 0x20216150 => 39
	i32 592146354, ; 30: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x234b6fb2 => 21
	i32 627609679, ; 31: Xamarin.AndroidX.CustomView => 0x2568904f => 56
	i32 627931235, ; 32: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 19
	i32 672442732, ; 33: System.Collections.Concurrent => 0x2814a96c => 77
	i32 688181140, ; 34: ca/Microsoft.Maui.Controls.resources.dll => 0x2904cf94 => 1
	i32 706645707, ; 35: ko/Microsoft.Maui.Controls.resources.dll => 0x2a1e8ecb => 16
	i32 709557578, ; 36: de/Microsoft.Maui.Controls.resources.dll => 0x2a4afd4a => 4
	i32 722857257, ; 37: System.Runtime.Loader.dll => 0x2b15ed29 => 104
	i32 759454413, ; 38: System.Net.Requests => 0x2d445acd => 97
	i32 762598435, ; 39: System.IO.Pipes.dll => 0x2d745423 => 89
	i32 775507847, ; 40: System.IO.Compression => 0x2e394f87 => 88
	i32 777317022, ; 41: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 25
	i32 789151979, ; 42: Microsoft.Extensions.Options => 0x2f0980eb => 41
	i32 823281589, ; 43: System.Private.Uri.dll => 0x311247b5 => 101
	i32 830298997, ; 44: System.IO.Compression.Brotli => 0x317d5b75 => 87
	i32 904024072, ; 45: System.ComponentModel.Primitives.dll => 0x35e25008 => 81
	i32 926902833, ; 46: tr/Microsoft.Maui.Controls.resources.dll => 0x373f6a31 => 28
	i32 967690846, ; 47: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 59
	i32 992768348, ; 48: System.Collections.dll => 0x3b2c715c => 80
	i32 1012816738, ; 49: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 69
	i32 1028951442, ; 50: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 38
	i32 1029334545, ; 51: da/Microsoft.Maui.Controls.resources.dll => 0x3d5a6611 => 3
	i32 1035644815, ; 52: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 49
	i32 1044663988, ; 53: System.Linq.Expressions.dll => 0x3e444eb4 => 90
	i32 1052210849, ; 54: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 61
	i32 1082857460, ; 55: System.ComponentModel.TypeConverter => 0x408b17f4 => 82
	i32 1084122840, ; 56: Xamarin.Kotlin.StdLib => 0x409e66d8 => 74
	i32 1098259244, ; 57: System => 0x41761b2c => 111
	i32 1118262833, ; 58: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 16
	i32 1168523401, ; 59: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 22
	i32 1178241025, ; 60: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 66
	i32 1203215381, ; 61: pl/Microsoft.Maui.Controls.resources.dll => 0x47b79c15 => 20
	i32 1208641965, ; 62: System.Diagnostics.Process => 0x480a69ad => 86
	i32 1234928153, ; 63: nb/Microsoft.Maui.Controls.resources.dll => 0x499b8219 => 18
	i32 1260983243, ; 64: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 2
	i32 1293217323, ; 65: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 57
	i32 1324164729, ; 66: System.Linq => 0x4eed2679 => 91
	i32 1373134921, ; 67: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 32
	i32 1376866003, ; 68: Xamarin.AndroidX.SavedState => 0x52114ed3 => 69
	i32 1406073936, ; 69: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 53
	i32 1430672901, ; 70: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 0
	i32 1461004990, ; 71: es\Microsoft.Maui.Controls.resources => 0x57152abe => 6
	i32 1462112819, ; 72: System.IO.Compression.dll => 0x57261233 => 88
	i32 1469204771, ; 73: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 50
	i32 1470490898, ; 74: Microsoft.Extensions.Primitives => 0x57a5e912 => 42
	i32 1480492111, ; 75: System.IO.Compression.Brotli.dll => 0x583e844f => 87
	i32 1493001747, ; 76: hi/Microsoft.Maui.Controls.resources.dll => 0x58fd6613 => 10
	i32 1514721132, ; 77: el/Microsoft.Maui.Controls.resources.dll => 0x5a48cf6c => 5
	i32 1543031311, ; 78: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 107
	i32 1551623176, ; 79: sk/Microsoft.Maui.Controls.resources.dll => 0x5c7be408 => 25
	i32 1622152042, ; 80: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 63
	i32 1624863272, ; 81: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 72
	i32 1636350590, ; 82: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 55
	i32 1639515021, ; 83: System.Net.Http.dll => 0x61b9038d => 93
	i32 1639986890, ; 84: System.Text.RegularExpressions => 0x61c036ca => 107
	i32 1657153582, ; 85: System.Runtime => 0x62c6282e => 105
	i32 1658251792, ; 86: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 73
	i32 1677501392, ; 87: System.Net.Primitives.dll => 0x63fca3d0 => 96
	i32 1679769178, ; 88: System.Security.Cryptography => 0x641f3e5a => 106
	i32 1729485958, ; 89: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 51
	i32 1736233607, ; 90: ro/Microsoft.Maui.Controls.resources.dll => 0x677cd287 => 23
	i32 1743415430, ; 91: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 1
	i32 1766324549, ; 92: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 70
	i32 1770582343, ; 93: Microsoft.Extensions.Logging.dll => 0x6988f147 => 39
	i32 1780572499, ; 94: Mono.Android.Runtime.dll => 0x6a216153 => 114
	i32 1782862114, ; 95: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 17
	i32 1788241197, ; 96: Xamarin.AndroidX.Fragment => 0x6a96652d => 58
	i32 1793755602, ; 97: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 9
	i32 1808609942, ; 98: Xamarin.AndroidX.Loader => 0x6bcd3296 => 63
	i32 1813058853, ; 99: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 74
	i32 1813201214, ; 100: Xamarin.Google.Android.Material => 0x6c13413e => 73
	i32 1818569960, ; 101: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 67
	i32 1828688058, ; 102: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 40
	i32 1842015223, ; 103: uk/Microsoft.Maui.Controls.resources.dll => 0x6dcaebf7 => 29
	i32 1853025655, ; 104: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 26
	i32 1858542181, ; 105: System.Linq.Expressions => 0x6ec71a65 => 90
	i32 1875935024, ; 106: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 8
	i32 1910275211, ; 107: System.Collections.NonGeneric.dll => 0x71dc7c8b => 78
	i32 1968388702, ; 108: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 35
	i32 2003115576, ; 109: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 5
	i32 2019465201, ; 110: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 61
	i32 2025202353, ; 111: ar/Microsoft.Maui.Controls.resources.dll => 0x78b622b1 => 0
	i32 2045470958, ; 112: System.Private.Xml => 0x79eb68ee => 102
	i32 2055257422, ; 113: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 60
	i32 2066184531, ; 114: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 4
	i32 2079903147, ; 115: System.Runtime.dll => 0x7bf8cdab => 105
	i32 2090596640, ; 116: System.Numerics.Vectors => 0x7c9bf920 => 99
	i32 2127167465, ; 117: System.Console => 0x7ec9ffe9 => 84
	i32 2142473426, ; 118: System.Collections.Specialized => 0x7fb38cd2 => 79
	i32 2159891885, ; 119: Microsoft.Maui => 0x80bd55ad => 45
	i32 2169148018, ; 120: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 12
	i32 2181898931, ; 121: Microsoft.Extensions.Options.dll => 0x820d22b3 => 41
	i32 2192057212, ; 122: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 40
	i32 2193016926, ; 123: System.ObjectModel.dll => 0x82b6c85e => 100
	i32 2201107256, ; 124: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 75
	i32 2201231467, ; 125: System.Net.Http => 0x8334206b => 93
	i32 2207618523, ; 126: it\Microsoft.Maui.Controls.resources => 0x839595db => 14
	i32 2266799131, ; 127: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 36
	i32 2270573516, ; 128: fr/Microsoft.Maui.Controls.resources.dll => 0x875633cc => 8
	i32 2279755925, ; 129: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 68
	i32 2295906218, ; 130: System.Net.Sockets => 0x88d8bfaa => 98
	i32 2303942373, ; 131: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 18
	i32 2305521784, ; 132: System.Private.CoreLib.dll => 0x896b7878 => 112
	i32 2353062107, ; 133: System.Net.Primitives => 0x8c40e0db => 96
	i32 2368005991, ; 134: System.Xml.ReaderWriter.dll => 0x8d24e767 => 110
	i32 2371007202, ; 135: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 35
	i32 2395872292, ; 136: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 13
	i32 2427813419, ; 137: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 10
	i32 2435356389, ; 138: System.Console.dll => 0x912896e5 => 84
	i32 2458678730, ; 139: System.Net.Sockets.dll => 0x928c75ca => 98
	i32 2475788418, ; 140: Java.Interop.dll => 0x93918882 => 113
	i32 2480646305, ; 141: Microsoft.Maui.Controls => 0x93dba8a1 => 43
	i32 2520243146, ; 142: Delivery Porecatu.dll => 0x9637dbca => 76
	i32 2550873716, ; 143: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 11
	i32 2585805581, ; 144: System.Net.Ping => 0x9a20430d => 95
	i32 2593496499, ; 145: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 20
	i32 2605712449, ; 146: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 75
	i32 2617129537, ; 147: System.Private.Xml.dll => 0x9bfe3a41 => 102
	i32 2620871830, ; 148: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 55
	i32 2626831493, ; 149: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 15
	i32 2663698177, ; 150: System.Runtime.Loader => 0x9ec4cf01 => 104
	i32 2732626843, ; 151: Xamarin.AndroidX.Activity => 0xa2e0939b => 48
	i32 2737747696, ; 152: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 50
	i32 2752995522, ; 153: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 21
	i32 2758225723, ; 154: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 44
	i32 2764765095, ; 155: Microsoft.Maui.dll => 0xa4caf7a7 => 45
	i32 2778768386, ; 156: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 71
	i32 2785988530, ; 157: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 27
	i32 2801831435, ; 158: Microsoft.Maui.Graphics => 0xa7008e0b => 47
	i32 2806116107, ; 159: es/Microsoft.Maui.Controls.resources.dll => 0xa741ef0b => 6
	i32 2810250172, ; 160: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 53
	i32 2831556043, ; 161: nl/Microsoft.Maui.Controls.resources.dll => 0xa8c61dcb => 19
	i32 2853208004, ; 162: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 71
	i32 2861189240, ; 163: Microsoft.Maui.Essentials => 0xaa8a4878 => 46
	i32 2909740682, ; 164: System.Private.CoreLib => 0xad6f1e8a => 112
	i32 2916838712, ; 165: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 72
	i32 2919462931, ; 166: System.Numerics.Vectors.dll => 0xae037813 => 99
	i32 2959614098, ; 167: System.ComponentModel.dll => 0xb0682092 => 83
	i32 2978675010, ; 168: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 57
	i32 3038032645, ; 169: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 34
	i32 3057625584, ; 170: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 64
	i32 3059408633, ; 171: Mono.Android.Runtime => 0xb65adef9 => 114
	i32 3059793426, ; 172: System.ComponentModel.Primitives => 0xb660be12 => 81
	i32 3077302341, ; 173: hu/Microsoft.Maui.Controls.resources.dll => 0xb76be845 => 12
	i32 3178803400, ; 174: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 65
	i32 3220365878, ; 175: System.Threading => 0xbff2e236 => 109
	i32 3258312781, ; 176: Xamarin.AndroidX.CardView => 0xc235e84d => 51
	i32 3305363605, ; 177: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 7
	i32 3316684772, ; 178: System.Net.Requests.dll => 0xc5b097e4 => 97
	i32 3317135071, ; 179: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 56
	i32 3346324047, ; 180: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 66
	i32 3357674450, ; 181: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 24
	i32 3362522851, ; 182: Xamarin.AndroidX.Core => 0xc86c06e3 => 54
	i32 3366347497, ; 183: Java.Interop => 0xc8a662e9 => 113
	i32 3374999561, ; 184: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 68
	i32 3381016424, ; 185: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 3
	i32 3428513518, ; 186: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 37
	i32 3463511458, ; 187: hr/Microsoft.Maui.Controls.resources.dll => 0xce70fda2 => 11
	i32 3471940407, ; 188: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 82
	i32 3476120550, ; 189: Mono.Android => 0xcf3163e6 => 115
	i32 3479583265, ; 190: ru/Microsoft.Maui.Controls.resources.dll => 0xcf663a21 => 24
	i32 3484440000, ; 191: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 23
	i32 3580758918, ; 192: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 31
	i32 3608519521, ; 193: System.Linq.dll => 0xd715a361 => 91
	i32 3641597786, ; 194: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 60
	i32 3643446276, ; 195: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 28
	i32 3643854240, ; 196: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 65
	i32 3647313064, ; 197: Delivery Porecatu => 0xd96594a8 => 76
	i32 3657292374, ; 198: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 36
	i32 3672681054, ; 199: Mono.Android.dll => 0xdae8aa5e => 115
	i32 3697841164, ; 200: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xdc68940c => 33
	i32 3724971120, ; 201: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 64
	i32 3732100267, ; 202: System.Net.NameResolution => 0xde7354ab => 94
	i32 3748608112, ; 203: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 85
	i32 3786282454, ; 204: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 52
	i32 3792276235, ; 205: System.Collections.NonGeneric => 0xe2098b0b => 78
	i32 3802395368, ; 206: System.Collections.Specialized.dll => 0xe2a3f2e8 => 79
	i32 3823082795, ; 207: System.Security.Cryptography.dll => 0xe3df9d2b => 106
	i32 3841636137, ; 208: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 38
	i32 3849253459, ; 209: System.Runtime.InteropServices.dll => 0xe56ef253 => 103
	i32 3889960447, ; 210: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xe7dc15ff => 32
	i32 3896106733, ; 211: System.Collections.Concurrent.dll => 0xe839deed => 77
	i32 3896760992, ; 212: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 54
	i32 3928044579, ; 213: System.Xml.ReaderWriter => 0xea213423 => 110
	i32 3931092270, ; 214: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 67
	i32 3955647286, ; 215: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 49
	i32 3980434154, ; 216: th/Microsoft.Maui.Controls.resources.dll => 0xed409aea => 27
	i32 3987592930, ; 217: he/Microsoft.Maui.Controls.resources.dll => 0xedadd6e2 => 9
	i32 4003436829, ; 218: System.Diagnostics.Process.dll => 0xee9f991d => 86
	i32 4025784931, ; 219: System.Memory => 0xeff49a63 => 92
	i32 4046471985, ; 220: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 44
	i32 4073602200, ; 221: System.Threading.dll => 0xf2ce3c98 => 109
	i32 4094352644, ; 222: Microsoft.Maui.Essentials.dll => 0xf40add04 => 46
	i32 4100113165, ; 223: System.Private.Uri => 0xf462c30d => 101
	i32 4102112229, ; 224: pt/Microsoft.Maui.Controls.resources.dll => 0xf48143e5 => 22
	i32 4125707920, ; 225: ms/Microsoft.Maui.Controls.resources.dll => 0xf5e94e90 => 17
	i32 4126470640, ; 226: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 37
	i32 4150914736, ; 227: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 29
	i32 4182413190, ; 228: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 62
	i32 4213026141, ; 229: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 85
	i32 4271975918, ; 230: Microsoft.Maui.Controls.dll => 0xfea12dee => 43
	i32 4292120959 ; 231: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 62
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [232 x i32] [
	i32 94, ; 0
	i32 108, ; 1
	i32 33, ; 2
	i32 47, ; 3
	i32 103, ; 4
	i32 52, ; 5
	i32 70, ; 6
	i32 30, ; 7
	i32 31, ; 8
	i32 83, ; 9
	i32 2, ; 10
	i32 95, ; 11
	i32 30, ; 12
	i32 48, ; 13
	i32 15, ; 14
	i32 59, ; 15
	i32 14, ; 16
	i32 89, ; 17
	i32 108, ; 18
	i32 92, ; 19
	i32 34, ; 20
	i32 26, ; 21
	i32 80, ; 22
	i32 58, ; 23
	i32 111, ; 24
	i32 100, ; 25
	i32 13, ; 26
	i32 7, ; 27
	i32 42, ; 28
	i32 39, ; 29
	i32 21, ; 30
	i32 56, ; 31
	i32 19, ; 32
	i32 77, ; 33
	i32 1, ; 34
	i32 16, ; 35
	i32 4, ; 36
	i32 104, ; 37
	i32 97, ; 38
	i32 89, ; 39
	i32 88, ; 40
	i32 25, ; 41
	i32 41, ; 42
	i32 101, ; 43
	i32 87, ; 44
	i32 81, ; 45
	i32 28, ; 46
	i32 59, ; 47
	i32 80, ; 48
	i32 69, ; 49
	i32 38, ; 50
	i32 3, ; 51
	i32 49, ; 52
	i32 90, ; 53
	i32 61, ; 54
	i32 82, ; 55
	i32 74, ; 56
	i32 111, ; 57
	i32 16, ; 58
	i32 22, ; 59
	i32 66, ; 60
	i32 20, ; 61
	i32 86, ; 62
	i32 18, ; 63
	i32 2, ; 64
	i32 57, ; 65
	i32 91, ; 66
	i32 32, ; 67
	i32 69, ; 68
	i32 53, ; 69
	i32 0, ; 70
	i32 6, ; 71
	i32 88, ; 72
	i32 50, ; 73
	i32 42, ; 74
	i32 87, ; 75
	i32 10, ; 76
	i32 5, ; 77
	i32 107, ; 78
	i32 25, ; 79
	i32 63, ; 80
	i32 72, ; 81
	i32 55, ; 82
	i32 93, ; 83
	i32 107, ; 84
	i32 105, ; 85
	i32 73, ; 86
	i32 96, ; 87
	i32 106, ; 88
	i32 51, ; 89
	i32 23, ; 90
	i32 1, ; 91
	i32 70, ; 92
	i32 39, ; 93
	i32 114, ; 94
	i32 17, ; 95
	i32 58, ; 96
	i32 9, ; 97
	i32 63, ; 98
	i32 74, ; 99
	i32 73, ; 100
	i32 67, ; 101
	i32 40, ; 102
	i32 29, ; 103
	i32 26, ; 104
	i32 90, ; 105
	i32 8, ; 106
	i32 78, ; 107
	i32 35, ; 108
	i32 5, ; 109
	i32 61, ; 110
	i32 0, ; 111
	i32 102, ; 112
	i32 60, ; 113
	i32 4, ; 114
	i32 105, ; 115
	i32 99, ; 116
	i32 84, ; 117
	i32 79, ; 118
	i32 45, ; 119
	i32 12, ; 120
	i32 41, ; 121
	i32 40, ; 122
	i32 100, ; 123
	i32 75, ; 124
	i32 93, ; 125
	i32 14, ; 126
	i32 36, ; 127
	i32 8, ; 128
	i32 68, ; 129
	i32 98, ; 130
	i32 18, ; 131
	i32 112, ; 132
	i32 96, ; 133
	i32 110, ; 134
	i32 35, ; 135
	i32 13, ; 136
	i32 10, ; 137
	i32 84, ; 138
	i32 98, ; 139
	i32 113, ; 140
	i32 43, ; 141
	i32 76, ; 142
	i32 11, ; 143
	i32 95, ; 144
	i32 20, ; 145
	i32 75, ; 146
	i32 102, ; 147
	i32 55, ; 148
	i32 15, ; 149
	i32 104, ; 150
	i32 48, ; 151
	i32 50, ; 152
	i32 21, ; 153
	i32 44, ; 154
	i32 45, ; 155
	i32 71, ; 156
	i32 27, ; 157
	i32 47, ; 158
	i32 6, ; 159
	i32 53, ; 160
	i32 19, ; 161
	i32 71, ; 162
	i32 46, ; 163
	i32 112, ; 164
	i32 72, ; 165
	i32 99, ; 166
	i32 83, ; 167
	i32 57, ; 168
	i32 34, ; 169
	i32 64, ; 170
	i32 114, ; 171
	i32 81, ; 172
	i32 12, ; 173
	i32 65, ; 174
	i32 109, ; 175
	i32 51, ; 176
	i32 7, ; 177
	i32 97, ; 178
	i32 56, ; 179
	i32 66, ; 180
	i32 24, ; 181
	i32 54, ; 182
	i32 113, ; 183
	i32 68, ; 184
	i32 3, ; 185
	i32 37, ; 186
	i32 11, ; 187
	i32 82, ; 188
	i32 115, ; 189
	i32 24, ; 190
	i32 23, ; 191
	i32 31, ; 192
	i32 91, ; 193
	i32 60, ; 194
	i32 28, ; 195
	i32 65, ; 196
	i32 76, ; 197
	i32 36, ; 198
	i32 115, ; 199
	i32 33, ; 200
	i32 64, ; 201
	i32 94, ; 202
	i32 85, ; 203
	i32 52, ; 204
	i32 78, ; 205
	i32 79, ; 206
	i32 106, ; 207
	i32 38, ; 208
	i32 103, ; 209
	i32 32, ; 210
	i32 77, ; 211
	i32 54, ; 212
	i32 110, ; 213
	i32 67, ; 214
	i32 49, ; 215
	i32 27, ; 216
	i32 9, ; 217
	i32 86, ; 218
	i32 92, ; 219
	i32 44, ; 220
	i32 109, ; 221
	i32 46, ; 222
	i32 101, ; 223
	i32 22, ; 224
	i32 17, ; 225
	i32 37, ; 226
	i32 29, ; 227
	i32 62, ; 228
	i32 85, ; 229
	i32 43, ; 230
	i32 62 ; 231
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.4xx @ 82d8938cf80f6d5fa6c28529ddfbdb753d805ab4"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"min_enum_size", i32 4}
