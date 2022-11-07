// import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:super_rich_text/super_rich_text.dart';
// import 'package:uikit/src/utils/colors.gen.dart';

// Widget appText({
//   required String text,
//   Color color = ColorName.black,
//   double width=double.infinity,
//   double fontSize = 16,
//   TextDecoration decoration = TextDecoration.none,
//   FontWeight fontWeight = FontWeight.w400,
//   EdgeInsets padding = const EdgeInsets.all(0),
//   TextAlign textAlign = TextAlign.start,
//   int maxLines = 3,
//   fontStyle = FontStyle.normal,
//   bool isRichText = false,
//   List<MarkerText> othersMarkers = const [],
//   bool needTranslation = false,
//   List<String>? args,
//   Map<String, String>? namedArgs,
// }) {
//   if (isRichText) {
//     return Padding(
//       padding: padding,
//       child: SuperRichText(
//         text: needTranslation
//             ? tr(
//                 text,
//                 args: args,
//                 namedArgs: namedArgs,
//               )
//             : text,
//         style: GoogleFonts.lato(
//           color: color,
//           fontSize: fontSize,
//           decoration: decoration,
//           fontWeight: fontWeight,
//         ),
//         textAlign: textAlign,
//         maxLines: maxLines,
//         overflow: TextOverflow.ellipsis,
//         othersMarkers: othersMarkers,
//       ),
//     );
//   }
//   return Padding(
//     padding: padding,
//     child: Text(
//       needTranslation
//           ? tr(
//               text,
//               args: args,
//               namedArgs: namedArgs,
//             )
//           : text,
//       style: GoogleFonts.lato(
//         color: color,
//         fontSize: fontSize,
//         decoration: decoration,
//         fontWeight: fontWeight,
//       ),
//       textAlign: textAlign,
//       maxLines: maxLines,
//       overflow: TextOverflow.ellipsis,
//     ),
//   );
// }
