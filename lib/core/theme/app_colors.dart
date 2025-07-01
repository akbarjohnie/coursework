import 'dart:ui';

abstract class AppColors {
  static const white = Color(0xFFFFFFFF);
  static const black = Color(0xFF000000);
  static const transparent = Color(0x00000000);

  /// [Gray section]

  /// HEX -> #151515
  static const gray_950 = Color(0xFF151515);

  ///0xFF1F1F1F
  static const gray_900 = Color(0xFF1F1F1F);

  /// HEX -> #252525
  static const gray_800 = Color(0xFF252525);

  /// HEX -> #333333
  static const gray_700 = Color(0xFF333333);

  /// HEX -> #404040
  static const gray_600 = Color(0xFF404040);

  /// HEX -> #616161
  static const gray_500 = Color(0xFF616161);

  /// HEX -> #777777
  static const gray_400 = Color(0xFF777777);

  /// HEX -> #999999
  static const gray_300 = Color(0xFF999999);

  /// HEX -> #BBBBBB
  static const gray_200 = Color(0xFFBBBBBB);

  /// HEX -> #D7D7D7
  static const gray_100 = Color(0xFFD7D7D7);

  /// HEX -> #EEEEEE
  static const gray_50 = Color(0xFFEEEEEE);

  /// HEX -> #F9F9F9
  static const gray_25 = Color(0xFFF9F9F9);

  /// [Purple section]

  /// HEX -> #201232
  static const purlple_950 = Color(0xFF201232);

  /// HEX -> #37175D
  static const purlple_900 = Color(0xFF37175D);

  /// HEX -> #511F8E
  static const purlple_800 = Color(0xFF511F8E);

  /// HEX -> #7029C6
  static const purlple_700 = Color(0xFF7029C6);

  /// HEX -> #8F43EC
  static const purlple_600 = Color(0xFF8F43EC);

  /// HEX -> #A969F8
  static const purlple_500 = Color(0xFFA969F8);

  /// HEX -> #C290FF
  static const purlple_400 = Color(0xFFC290FF);

  /// HEX -> #D6B6FF
  static const purlple_300 = Color(0xFFD6B6FF);

  /// HEX -> #E2CBFF
  static const purlple_200 = Color(0xFFE2CBFF);

  /// HEX -> #EADAFF
  static const purlple_100 = Color(0xFFEADAFF);

  /// HEX -> #F2E8FF
  static const purlple_50 = Color(0xFFF2E8FF);

  /// HEX -> #FAF6FF
  static const purlple_25 = Color(0xFFFAF6FF);

  /// [Green section]

  /// 0xFF073120
  static const green_950 = Color(0xFF073120);

  /// 0xFF054F31
  static const green_900 = Color(0xFF054F31);

  /// 0xFF05603A
  static const green_800 = Color(0xFF05603A);

  /// 0xFF027A48
  static const green_700 = Color(0xFF027A48);

  /// 0xFF039855
  static const green_600 = Color(0xFF039855);

  /// 0xFF12B76A
  static const green_500 = Color(0xFF12B76A);

  /// 0xFF32D583
  static const green_400 = Color(0xFF32D583);

  /// 0xFF6CE9A6
  static const green_300 = Color(0xFF6CE9A6);

  /// 0xFFA6F4C5
  static const green_200 = Color(0xFFA6F4C5);

  /// 0xFFD1FADF
  static const green_100 = Color(0xFFD1FADF);

  /// 0xFFECFDF3
  static const green_50 = Color(0xFFECFDF3);

  /// 0xFFF6FEF9
  static const green_25 = Color(0xFFF6FEF9);

  /// [Yellow section]

  /// 0xFF511F09
  static const yellow_950 = Color(0xFF511F09);

  /// 0xFF792E0D
  static const yellow_900 = Color(0xFF792E0D);

  /// 0xFF93370D
  static const yellow_800 = Color(0xFF93370D);

  /// 0xFFB54708
  static const yellow_700 = Color(0xFFB54708);

  /// 0xFFDC6803
  static const yellow_600 = Color(0xFFDC6803);

  /// 0xFFF79009
  static const yellow_500 = Color(0xFFF79009);

  /// 0xFFFDB022
  static const yellow_400 = Color(0xFFFDB022);

  /// 0xFFFEC84B
  static const yellow_300 = Color(0xFFFEC84B);

  /// 0xFFFEDF89
  static const yellow_200 = Color(0xFFFEDF89);

  /// 0xFFFEEFC6
  static const yellow_100 = Color(0xFFFEEFC6);

  /// 0xFFFFFAEB
  static const yellow_50 = Color(0xFFFFFAEB);

  /// 0xFFFFFCF5
  static const yellow_25 = Color(0xFFFFFCF5);

  /// [Red section]

  /// 0xFF3D0F08
  static const red_950 = Color(0xFF3D0F08);

  /// 0xFF5D1408
  static const red_900 = Color(0xFF5D1408);

  /// 0xFF861811
  static const red_800 = Color(0xFF861811);

  /// 0xFFB11E13
  static const red_700 = Color(0xFFB11E13);

  /// 0xFFD92D20
  static const red_600 = Color(0xFFD92D20);

  /// 0xFFF04438
  static const red_500 = Color(0xFFF04438);

  /// 0xFFF97066
  static const red_400 = Color(0xFFF97066);

  /// 0xFFFDA19B
  static const red_300 = Color(0xFFFDA19B);

  /// 0xFFFECDC9
  static const red_200 = Color(0xFFFECDC9);

  /// 0xFFFEE4E2
  static const red_100 = Color(0xFFFEE4E2);

  /// 0xFFFEF3F2
  static const red_50 = Color(0xFFFEF3F2);

  /// 0xFFFFFAFA
  static const red_25 = Color(0xFFFFFAFA);

  /// [Pink section]

  /// 0xFF490A2C
  static const pink_950 = Color(0xFF490A2C);

  /// 0xFF6D0E41
  static const pink_900 = Color(0xFF6D0E41);

  /// 0xFF8E1053
  static const pink_800 = Color(0xFF8E1053);

  /// 0xFFC01574
  static const pink_700 = Color(0xFFC01574);

  /// 0xFFDD2590
  static const pink_600 = Color(0xFFDD2590);

  /// 0xFFEE46BC
  static const pink_500 = Color(0xFFEE46BC);

  /// 0xFFF670C7
  static const pink_400 = Color(0xFFF670C7);

  /// 0xFFFAA7E0
  static const pink_300 = Color(0xFFFAA7E0);

  /// 0xFFFCCEEE
  static const pink_200 = Color(0xFFFCCEEE);

  /// 0xFFFCE7F6
  static const pink_100 = Color(0xFFFCE7F6);

  /// 0xFFFDF2FA
  static const pink_50 = Color(0xFFFDF2FA);

  /// 0xFFFEF6FB
  static const pink_25 = Color(0xFFFEF6FB);

  /// [Gradient section]
  static final gpurlple = [gray_950.withValues(alpha: 0), purlple_500];

  static final gGray = [gray_950.withValues(alpha: 0), gray_950];

  /// [Colors with opacity section]
  static final gOpacity_72 = gray_950.withValues(alpha: 0.72);
}
