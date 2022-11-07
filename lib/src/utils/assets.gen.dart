/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsColorGen {
  const $AssetsColorGen();

  /// File path: assets/color/colors.xml
  String get colors => 'assets/color/colors.xml';

  /// List of all assets
  List<String> get values => [colors];
}

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/bottom_arrow.svg
  SvgGenImage get bottomArrow =>
      const SvgGenImage('assets/icons/bottom_arrow.svg');

  /// File path: assets/icons/box1.svg
  SvgGenImage get box1 => const SvgGenImage('assets/icons/box1.svg');

  /// File path: assets/icons/box2.svg
  SvgGenImage get box2 => const SvgGenImage('assets/icons/box2.svg');

  /// File path: assets/icons/calendar.svg
  SvgGenImage get calendar => const SvgGenImage('assets/icons/calendar.svg');

  /// File path: assets/icons/card.svg
  SvgGenImage get card => const SvgGenImage('assets/icons/card.svg');

  /// File path: assets/icons/cencel.svg
  SvgGenImage get cencel => const SvgGenImage('assets/icons/cencel.svg');

  /// File path: assets/icons/chat.svg
  SvgGenImage get chat => const SvgGenImage('assets/icons/chat.svg');

  /// File path: assets/icons/check.svg
  SvgGenImage get check => const SvgGenImage('assets/icons/check.svg');

  /// File path: assets/icons/clock.svg
  SvgGenImage get clock => const SvgGenImage('assets/icons/clock.svg');

  /// File path: assets/icons/down.svg
  SvgGenImage get down => const SvgGenImage('assets/icons/down.svg');

  /// File path: assets/icons/edit.svg
  SvgGenImage get edit => const SvgGenImage('assets/icons/edit.svg');

  /// File path: assets/icons/exchange.svg
  SvgGenImage get exchange => const SvgGenImage('assets/icons/exchange.svg');

  /// File path: assets/icons/history.svg
  SvgGenImage get history => const SvgGenImage('assets/icons/history.svg');

  /// File path: assets/icons/infoCircle.svg
  SvgGenImage get infoCircle =>
      const SvgGenImage('assets/icons/infoCircle.svg');

  /// File path: assets/icons/invoice.svg
  SvgGenImage get invoice => const SvgGenImage('assets/icons/invoice.svg');

  /// File path: assets/icons/luggage.svg
  SvgGenImage get luggage => const SvgGenImage('assets/icons/luggage.svg');

  /// File path: assets/icons/piechart1.svg
  SvgGenImage get piechart1 => const SvgGenImage('assets/icons/piechart1.svg');

  /// File path: assets/icons/piechart2.svg
  SvgGenImage get piechart2 => const SvgGenImage('assets/icons/piechart2.svg');

  /// File path: assets/icons/pin.svg
  SvgGenImage get pin => const SvgGenImage('assets/icons/pin.svg');

  /// File path: assets/icons/refresh.svg
  SvgGenImage get refresh => const SvgGenImage('assets/icons/refresh.svg');

  /// File path: assets/icons/right.svg
  SvgGenImage get right => const SvgGenImage('assets/icons/right.svg');

  /// File path: assets/icons/shoppingCart.svg
  SvgGenImage get shoppingCart =>
      const SvgGenImage('assets/icons/shoppingCart.svg');

  /// File path: assets/icons/smartphone.svg
  SvgGenImage get smartphone =>
      const SvgGenImage('assets/icons/smartphone.svg');

  /// File path: assets/icons/stack.svg
  SvgGenImage get stack => const SvgGenImage('assets/icons/stack.svg');

  /// File path: assets/icons/trash.svg
  SvgGenImage get trash => const SvgGenImage('assets/icons/trash.svg');

  /// File path: assets/icons/uploadingFile.svg
  SvgGenImage get uploadingFile =>
      const SvgGenImage('assets/icons/uploadingFile.svg');

  /// File path: assets/icons/wallet.svg
  SvgGenImage get wallet => const SvgGenImage('assets/icons/wallet.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
        bottomArrow,
        box1,
        box2,
        calendar,
        card,
        cencel,
        chat,
        check,
        clock,
        down,
        edit,
        exchange,
        history,
        infoCircle,
        invoice,
        luggage,
        piechart1,
        piechart2,
        pin,
        refresh,
        right,
        shoppingCart,
        smartphone,
        stack,
        trash,
        uploadingFile,
        wallet
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/reportImage.png
  AssetGenImage get reportImage =>
      const AssetGenImage('assets/images/reportImage.png');

  /// List of all assets
  List<AssetGenImage> get values => [reportImage];
}

class Assets {
  Assets._();

  static const $AssetsColorGen color = $AssetsColorGen();
  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider() => AssetImage(_assetName);

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    Color? color,
    BlendMode colorBlendMode = BlendMode.srcIn,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    Clip clipBehavior = Clip.hardEdge,
    bool cacheColorFilter = false,
    SvgTheme? theme,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      color: color,
      colorBlendMode: colorBlendMode,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
      theme: theme,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
