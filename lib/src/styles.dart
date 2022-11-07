import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// final inputBorder = OutlineInputBorder(
//   borderSide: const BorderSide(
//     color: ColorName.borderTextField,
//     width: 1,
//   ),
//   borderRadius: BorderRadius.circular(12),
// );

// final inputActiveBorder = OutlineInputBorder(
//   borderSide: const BorderSide(
//     color: ColorName.green,
//     width: 1,
//   ),
//   borderRadius: BorderRadius.circular(12),
// );
// final errorActiveBorder = OutlineInputBorder(
//   borderSide: const BorderSide(
//     color: ColorName.warning,
//     width: 1,
//   ),
//   borderRadius: BorderRadius.circular(12),
// );

TextStyle hintTextStyle({
  double fontSize = 16,
  FontWeight fontWeight = FontWeight.w400,
  Color color = Colors.grey,
}) {
  return GoogleFonts.rubik(
    fontSize: fontSize,
    fontWeight: fontWeight,
    color: color,
  );
}

TextStyle inputTextStyle({
  double fontSize = 16,
  FontWeight fontWeight = FontWeight.w400,
  Color color = Colors.black,
}) {
  return GoogleFonts.rubik(
    fontSize: fontSize,
    fontWeight: fontWeight,
    color: color,
  );
}

// class _AppButtonColor {
//   static const Map<AppButtonType, List<Color>> _colors = {
//     AppButtonType.white: [
//       ColorName.white,
//       ColorName.mainColor,
//       ColorName.textColor
//     ],
//     AppButtonType.light: [
//       ColorName.light,
//       ColorName.lightHover,
//       ColorName.textColor
//     ],
//     AppButtonType.primary: [
//       ColorName.primary,
//       ColorName.primaryHover,
//       ColorName.white
//     ],
//     AppButtonType.secondary: [
//       ColorName.secondary,
//       ColorName.secondaryHover,
//       ColorName.white
//     ],
//     AppButtonType.success: [
//       ColorName.success,
//       ColorName.successHover,
//       ColorName.white
//     ],
//     AppButtonType.info: [ColorName.info, ColorName.infoHover, ColorName.white],
//     AppButtonType.warning: [
//       ColorName.warning,
//       ColorName.warningHover,
//       ColorName.white
//     ],
//     AppButtonType.danger: [
//       ColorName.danger,
//       ColorName.dangerHover,
//       ColorName.white
//     ],
//     AppButtonType.dark: [ColorName.white, ColorName.white, ColorName.mainColor],
//     AppButtonType.comment: [
//       ColorName.lightGrey,
//       ColorName.lightGreen,
//       ColorName.mainColor
//     ],
//   };

//   static Color getHoverColor(AppButtonType type) => _colors[type]![1];

//   static Color getColor(AppButtonType type) => _colors[type]![0];

//   static Color getTextColor(AppButtonType type) => _colors[type]![2];
// }
