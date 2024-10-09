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

class $AssetsSvgsGen {
  const $AssetsSvgsGen();

  /// File path: assets/svgs/arrow_up.svg
  SvgGenImage get arrowUp => const SvgGenImage('assets/svgs/arrow_up.svg');

  /// File path: assets/svgs/basket.svg
  SvgGenImage get basket => const SvgGenImage('assets/svgs/basket.svg');

  /// File path: assets/svgs/database.svg
  SvgGenImage get database => const SvgGenImage('assets/svgs/database.svg');

  /// File path: assets/svgs/favorite.svg
  SvgGenImage get favorite => const SvgGenImage('assets/svgs/favorite.svg');

  /// File path: assets/svgs/filter.svg
  SvgGenImage get filter => const SvgGenImage('assets/svgs/filter.svg');

  /// File path: assets/svgs/home.svg
  SvgGenImage get home => const SvgGenImage('assets/svgs/home.svg');

  /// File path: assets/svgs/layer.svg
  SvgGenImage get layer => const SvgGenImage('assets/svgs/layer.svg');

  /// File path: assets/svgs/list.svg
  SvgGenImage get list => const SvgGenImage('assets/svgs/list.svg');

  /// File path: assets/svgs/location.svg
  SvgGenImage get location => const SvgGenImage('assets/svgs/location.svg');

  /// File path: assets/svgs/message.svg
  SvgGenImage get message => const SvgGenImage('assets/svgs/message.svg');

  /// File path: assets/svgs/search_filled.svg
  SvgGenImage get searchFilled =>
      const SvgGenImage('assets/svgs/search_filled.svg');

  /// File path: assets/svgs/search_outline.svg
  SvgGenImage get searchOutline =>
      const SvgGenImage('assets/svgs/search_outline.svg');

  /// File path: assets/svgs/send.svg
  SvgGenImage get send => const SvgGenImage('assets/svgs/send.svg');

  /// File path: assets/svgs/shield.svg
  SvgGenImage get shield => const SvgGenImage('assets/svgs/shield.svg');

  /// File path: assets/svgs/user.svg
  SvgGenImage get user => const SvgGenImage('assets/svgs/user.svg');

  /// File path: assets/svgs/wallet.svg
  SvgGenImage get wallet => const SvgGenImage('assets/svgs/wallet.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
        arrowUp,
        basket,
        database,
        favorite,
        filter,
        home,
        layer,
        list,
        location,
        message,
        searchFilled,
        searchOutline,
        send,
        shield,
        user,
        wallet
      ];
}

class Assets {
  Assets._();

  static const $AssetsSvgsGen svgs = $AssetsSvgsGen();
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
