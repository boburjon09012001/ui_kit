

import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:super_rich_text/super_rich_text.dart';

import '../utils/colors.gen.dart';

class AppWidgets {
  static Widget appButton({
    required String title,
    required VoidCallback onTap,
    double? width,
    double? height,
    bool isTextRich = false,
    Color color = Colors.grey,
    Color textColor = ColorName.black,
    double fontSize = 16.0,
    FontWeight fontWeight = FontWeight.w600,
    double borderRadius = 12.0,
    Widget icon = const SizedBox(),
  }) {
    return Material(
      color: color,
      borderRadius: BorderRadius.circular(borderRadius),
      child: InkWell(
        borderRadius: BorderRadius.circular(borderRadius),
        onTap: onTap,
        child: Ink(
          width: width ?? MediaQueryData.fromWindow(window).size.width,
          height: height ?? 50,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                icon,
                textLocale(
                  textAlign: TextAlign.center,
                  localeKey: title,
                  color: textColor,
                  fontSize: fontSize,
                  fontWeight: fontWeight,
                  isRichText: isTextRich,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  static Widget text({
    required String text,
    Color color = ColorName.black,
    double fontSize = 16,
    TextDecoration decoration = TextDecoration.none,
    FontWeight fontWeight = FontWeight.w400,
    EdgeInsets padding = const EdgeInsets.all(0),
    TextAlign textAlign = TextAlign.start,
    TextStyle? textStyle,
    int maxLines = 3,
    double height = 1.0,
    fontStyle = FontStyle.normal,
    bool isRichText = false,
    List<MarkerText> othersMarkers = const [],
  }) {
    if (isRichText) {
      return Padding(
        padding: padding,
        child: SuperRichText(
          text: text,
          style: textStyle ??
              GoogleFonts.inter(
                color: color,
                fontSize: fontSize,
                decoration: decoration,
                fontWeight: fontWeight,
              ),
          textAlign: textAlign,
          maxLines: maxLines,
          overflow: TextOverflow.ellipsis,
          othersMarkers: othersMarkers,
        ),
      );
    }
    return Padding(
      padding: padding,
      child: Text(
        text,
        style: textStyle ??
            GoogleFonts.inter(
              color: color,
              fontSize: fontSize,
              decoration: decoration,
              fontWeight: fontWeight,
              height: height,
            ),
        textAlign: textAlign,
        maxLines: maxLines,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }


static Widget textLocale({
    required String localeKey,
    String addChar = "",
    Color color = ColorName.black,
    double fontSize = 16,
    TextDecoration decoration = TextDecoration.none,
    FontWeight fontWeight = FontWeight.w400,
    EdgeInsets padding = const EdgeInsets.all(0),
    TextAlign textAlign = TextAlign.start,
    int maxLines = 3,
    int minLines = 1,
    TextStyle? textStyle,
    bool isRichText = false,
    double height = 1.0,
    List<MarkerText> othersMarkers = const [],
    List<String>? args,
    Map<String, String>? namedArgs,
  }) {
    if (isRichText) {
      return Padding(
        padding: padding,
        child: SuperRichText(
          text: tr(
            localeKey,
            args: args,
            namedArgs: namedArgs,
          ),
          style: textStyle ??
              GoogleFonts.inter(
                color: color,
                fontSize: fontSize,
                decoration: decoration,
                fontWeight: fontWeight,
              ),
          textAlign: textAlign,
          maxLines: maxLines,
          overflow: TextOverflow.ellipsis,
          othersMarkers: othersMarkers,
        ),
      );
    }
    return Padding(
      padding: padding,
      child: Text(
        localeKey.tr(
              args: args,
              namedArgs: namedArgs,
            ) +
            addChar,
        style: textStyle ??
            GoogleFonts.inter(
                color: color,
                fontSize: fontSize,
                decoration: decoration,
                fontWeight: fontWeight,
                height: height),
        textAlign: textAlign,
        maxLines: maxLines,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }

  /// Default MainAxisAlignment.center;
  /// enter  MainAxisAlignment mainAxisAlignment = MainAxisAlignment.center;
  /// enter one line text and you can to get two colorly text widget
  // static Widget twoColorlyText(
  //   String mytext, {
  //   double fontSize = 16,
  //   FontWeight fontWeight = FontWeight.normal,
  //   Color firstColor = ColorName.black,
  //   Color lastColor = ColorName.green,
  //   double height = 1.0,
  //   MainAxisAlignment mainAxisAlignment = MainAxisAlignment.center,
  // }) {
  //   var list = mytext.tr().split(" ");
  //   var text1 = list[0];
  //   list.removeAt(0);
  //   var text2 = list.join(" ");
  //   return Row(
  //     mainAxisAlignment: mainAxisAlignment,
  //     children: [
  //       text(
  //         text: text1,
  //         color: firstColor,
  //         fontSize: fontSize,
  //         fontWeight: fontWeight,
  //         height: height,
  //       ),
  //       Text(
  //         " ",
  //         style: TextStyle(
  //           fontSize: fontSize,
  //           height: height,
  //         ),
  //       ),
  //       text(
  //         text: text2,
  //         color: lastColor,
  //         fontSize: fontSize,
  //         fontWeight: fontWeight,
  //         height: height,
  //       ),
  //     ],
  //   );
  // }

  // /// set only net image url
  static Widget networkImage(
      {required String url,
      double? height,
      double? width,
      Color? color,
      BoxFit fit = BoxFit.cover,
      double radius = 14.0,
      int? scale}) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(radius)),
      child: CachedNetworkImage(
          imageUrl: url,
          width: width,
          height: height,
          fit: fit,
          color: color,
          placeholder: (context, url) {
            return Center(
              widthFactor: 20,
              heightFactor: 20,
              child: CircularProgressIndicator(),
            );
          },
          errorWidget: (context, url, error) {
            return Container(color: Colors.black12, child: Container());
          }),
    );
  }
}