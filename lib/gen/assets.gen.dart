/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/upvote.svg
  String get upvote => 'assets/icons/upvote.svg';

  /// List of all assets
  List<String> get values => [upvote];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/Card_1.png
  AssetGenImage get card1 => const AssetGenImage('assets/images/Card_1.png');

  /// File path: assets/images/Card_2.png
  AssetGenImage get card2 => const AssetGenImage('assets/images/Card_2.png');

  /// File path: assets/images/Card_3.png
  AssetGenImage get card3 => const AssetGenImage('assets/images/Card_3.png');

  /// File path: assets/images/apple_stock.png
  AssetGenImage get appleStock =>
      const AssetGenImage('assets/images/apple_stock.png');

  /// File path: assets/images/circle_1.png
  AssetGenImage get circle1 =>
      const AssetGenImage('assets/images/circle_1.png');

  /// File path: assets/images/circle_2.png
  AssetGenImage get circle2 =>
      const AssetGenImage('assets/images/circle_2.png');

  /// File path: assets/images/finance.png
  AssetGenImage get finance => const AssetGenImage('assets/images/finance.png');

  /// File path: assets/images/logo.png
  AssetGenImage get logo => const AssetGenImage('assets/images/logo.png');

  /// File path: assets/images/mountain.png
  AssetGenImage get mountain =>
      const AssetGenImage('assets/images/mountain.png');

  /// File path: assets/images/portfolio_1.png
  AssetGenImage get portfolio1 =>
      const AssetGenImage('assets/images/portfolio_1.png');

  /// File path: assets/images/profile.png
  AssetGenImage get profile => const AssetGenImage('assets/images/profile.png');

  /// File path: assets/images/profile_1.png
  AssetGenImage get profile1 =>
      const AssetGenImage('assets/images/profile_1.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        card1,
        card2,
        card3,
        appleStock,
        circle1,
        circle2,
        finance,
        logo,
        mountain,
        portfolio1,
        profile,
        profile1
      ];
}

class Assets {
  Assets._();

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

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
