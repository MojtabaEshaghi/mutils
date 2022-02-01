part of '../mutils.dart';

extension Mui on MInterface {
  ThemeData appTheme( {required Color color, String? fontFamily}) {
    return ThemeData(
        primarySwatch: generateMaterialColor(color), fontFamily: fontFamily);
  }

  MaterialColor generateMaterialColor(Color color) {
    return MaterialColor(color.value, {
      50: tintColor(color, 0.9),
      100: tintColor(color, 0.8),
      200: tintColor(color, 0.6),
      300: tintColor(color, 0.4),
      400: tintColor(color, 0.2),
      500: color,
      600: shadeColor(color, 0.1),
      700: shadeColor(color, 0.2),
      800: shadeColor(color, 0.3),
      900: shadeColor(color, 0.4),
    });
  }

  int _tintValue(int value, double factor) =>
      max(0, min((value + (255 - value * factor)).round(), 255));

  Color tintColor(Color color, double factor) => Color.fromRGBO(
      _tintValue(color.red, factor),
      _tintValue(color.green, factor),
      _tintValue(color.blue, factor),
      1);

  int shadeValue(int value, double factor) =>
      max(0, min(value - (value * factor).round(), 255));

  Color shadeColor(Color color, double factor) => Color.fromRGBO(
      shadeValue(color.red, factor),
      shadeValue(color.green, factor),
      shadeValue(color.blue, factor),
      1);
}

extension MTextStyle on MInterface {
  TextStyle mtStyleBold({Color color = Colors.black, double fontSize = 14}) {
    return TextStyle(
        fontSize: fontSize, fontWeight: FontWeight.bold, color: color);
  }

  TextStyle mtStyle({Color color = Colors.black, double fontSize = 14}) {
    return TextStyle(
        fontSize: fontSize, fontWeight: FontWeight.normal, color: color);
  }

  TextStyle mtStyleMedium({Color color = Colors.black, double fontSize = 14}) {
    return TextStyle(
        fontSize: fontSize, fontWeight: FontWeight.w600, color: color);
  }

  TextStyle mtStyleLight({Color color = Colors.black, double fontSize = 14}) {
    return TextStyle(
        fontSize: fontSize, fontWeight: FontWeight.w400, color: color);
  }
}
