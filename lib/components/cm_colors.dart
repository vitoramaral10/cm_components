import 'package:flutter/material.dart';

class CMColors {
  static final AlertColors alert = AlertColors();
  static final BackgroundColors background = BackgroundColors();
  static final TextColor text = TextColor();

  static const Color primary = Color(0xFF0d6efd);
  static const Color secondary = Color(0xFF6c757d);
  static const Color success = Color(0xFF198754);
  static const Color info = Color(0xFF0dcaf0);
  static const Color warning = Color(0xFFffc107);
  static const Color danger = Color(0xFFdc3545);
  static const Color light = Color(0xFFf8f9fa);
  static const Color dark = Color(0xFF212529);
  static const Color successLight = Color(0xFFe8fff3);
}

class AlertColors {
  Color primary;
  Color secondary;
  Color success;
  Color successDivider;
  Color danger;
  Color warning;
  Color info;
  Color light;
  Color dark;

  AlertColors({
    this.primary = const Color(0xFF2c7be5),
    this.secondary = const Color(0xFF6e84a3),
    this.success = const Color(0xFF00d97e),
    this.successDivider = const Color(0xFF00c06f),
    this.danger = const Color(0xFFe63757),
    this.warning = const Color(0xFFf6c343),
    this.info = const Color(0xFF39afd1),
    this.light = const Color(0xFFedf2f9),
    this.dark = const Color(0xFF12263f),
  });
}

class BackgroundColors {
  Color primary;
  Color secondary;
  Color success;
  Color danger;
  Color warning;
  Color info;
  Color light;
  Color dark;
  Color primarySoft;
  Color secondarySoft;
  Color successSoft;
  Color dangerSoft;
  Color warningSoft;
  Color infoSoft;
  Color lightSoft;
  Color darkSoft;

  BackgroundColors({
    this.primary = const Color(0xFF2c7be5),
    this.secondary = const Color(0xFF6e84a3),
    this.success = const Color(0xFF00d97e),
    this.danger = const Color(0xFFe63757),
    this.warning = const Color(0xFFf6c343),
    this.info = const Color(0xFF39afd1),
    this.light = const Color(0xFFedf2f9),
    this.dark = const Color(0xFF12263f),
    this.primarySoft = const Color(0xFFd5e5fa),
    this.secondarySoft = const Color(0xFFe2e6ed),
    this.successSoft = const Color(0xFFccf7e5),
    this.dangerSoft = const Color(0xFFfad7dd),
    this.warningSoft = const Color(0xFFfdf3d9),
    this.infoSoft = const Color(0xFFd7eff6),
    this.lightSoft = const Color(0xFFfbfcfe),
    this.darkSoft = const Color(0xFFd0d4d9),
  });
}

class TextColor {
  Color muted;
  Color dark;
  Color danger;
  Color warning;
  Color info;
  Color success;
  Color light;
  Color secondary;
  Color primary;
  Color white;
  MaterialColor grey;
  Color primarySoft;
  Color secondarySoft;
  Color successSoft;
  Color dangerSoft;
  Color warningSoft;
  Color infoSoft;
  Color lightSoft;
  Color darkSoft;

  static const int _greyPrimaryValue = 0xFFA1A5B7;

  TextColor({
    this.muted = const Color(0xFFA1A5B7),
    this.dark = const Color(0xFF181C32),
    this.danger = const Color(0xFFf1416c),
    this.warning = const Color(0xFFffc700),
    this.info = const Color(0xFF7239ea),
    this.success = const Color(0xFF50cd89),
    this.light = const Color(0xFFf5f8fa),
    this.secondary = const Color(0xFFE4E6EF),
    this.primary = const Color(0xFF009ef7),
    this.white = const Color(0xFFffffff),
    this.grey = const MaterialColor(
      _greyPrimaryValue,
      <int, Color>{
        100: Color(0xFFf5f8fa),
        200: Color(0xFFeff2f5),
        300: Color(0xFFE4E6EF),
        400: Color(0xFFB5B5C3),
        500: Color(_greyPrimaryValue),
        600: Color(0xFF7E8299),
        700: Color(0xFF5E6278),
        800: Color(0xFF3F4254),
        900: Color(0xFF181C32),
      },
    ),
    this.primarySoft = const Color(0xFF2c7be5),
    this.secondarySoft = const Color(0xFF6e84a3),
    this.successSoft = const Color(0xFF00d97e),
    this.dangerSoft = const Color(0xFFe63757),
    this.warningSoft = const Color(0xFFf6c343),
    this.infoSoft = const Color(0xFF39afd1),
    this.lightSoft = const Color(0xFFedf2f9),
    this.darkSoft = const Color(0xFF12263f),
  });
}
