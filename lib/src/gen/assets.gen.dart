/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vector_graphics/vector_graphics.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/arrow_forward.svg
  SvgGenImage get arrowForward =>
      const SvgGenImage('assets/icons/arrow_forward.svg');

  /// File path: assets/icons/art_work.svg
  SvgGenImage get artWork => const SvgGenImage('assets/icons/art_work.svg');

  /// File path: assets/icons/back_space.svg
  SvgGenImage get backSpace => const SvgGenImage('assets/icons/back_space.svg');

  /// File path: assets/icons/bar_code.svg
  SvgGenImage get barCode => const SvgGenImage('assets/icons/bar_code.svg');

  /// File path: assets/icons/credit_card.svg
  SvgGenImage get creditCard =>
      const SvgGenImage('assets/icons/credit_card.svg');

  /// File path: assets/icons/face_icon.svg
  SvgGenImage get faceIcon => const SvgGenImage('assets/icons/face_icon.svg');

  /// File path: assets/icons/ghs_flag.svg
  SvgGenImage get ghsFlag => const SvgGenImage('assets/icons/ghs_flag.svg');

  /// File path: assets/icons/gift.svg
  SvgGenImage get gift => const SvgGenImage('assets/icons/gift.svg');

  /// File path: assets/icons/home.svg
  SvgGenImage get home => const SvgGenImage('assets/icons/home.svg');

  /// File path: assets/icons/more_horizontal.svg
  SvgGenImage get moreHorizontal =>
      const SvgGenImage('assets/icons/more_horizontal.svg');

  /// File path: assets/icons/ngn_flag.svg
  SvgGenImage get ngnFlag => const SvgGenImage('assets/icons/ngn_flag.svg');

  /// File path: assets/icons/notification.svg
  SvgGenImage get notification =>
      const SvgGenImage('assets/icons/notification.svg');

  /// File path: assets/icons/security_user.svg
  SvgGenImage get securityUser =>
      const SvgGenImage('assets/icons/security_user.svg');

  /// File path: assets/icons/stash.svg
  SvgGenImage get stash => const SvgGenImage('assets/icons/stash.svg');

  /// File path: assets/icons/us_flag.svg
  SvgGenImage get usFlag => const SvgGenImage('assets/icons/us_flag.svg');

  /// File path: assets/icons/view_off.svg
  SvgGenImage get viewOff => const SvgGenImage('assets/icons/view_off.svg');

  /// File path: assets/icons/wirepay.svg
  SvgGenImage get wirepay => const SvgGenImage('assets/icons/wirepay.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
        arrowForward,
        artWork,
        backSpace,
        barCode,
        creditCard,
        faceIcon,
        ghsFlag,
        gift,
        home,
        moreHorizontal,
        ngnFlag,
        notification,
        securityUser,
        stash,
        usFlag,
        viewOff,
        wirepay
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/logo.png
  AssetGenImage get logo => const AssetGenImage('assets/images/logo.png');

  /// File path: assets/images/sample_profile.png
  AssetGenImage get sampleProfile =>
      const AssetGenImage('assets/images/sample_profile.png');

  /// File path: assets/images/splash_bg.png
  AssetGenImage get splashBg =>
      const AssetGenImage('assets/images/splash_bg.png');

  /// List of all assets
  List<AssetGenImage> get values => [logo, sampleProfile, splashBg];
}

class $AssetsSvgsGen {
  const $AssetsSvgsGen();

  /// File path: assets/svgs/bg_mask.svg
  SvgGenImage get bgMask => const SvgGenImage('assets/svgs/bg_mask.svg');

  /// File path: assets/svgs/face_scan.svg
  SvgGenImage get faceScan => const SvgGenImage('assets/svgs/face_scan.svg');

  /// List of all assets
  List<SvgGenImage> get values => [bgMask, faceScan];
}

class AppAssets {
  AppAssets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsSvgsGen svgs = $AssetsSvgsGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

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

class SvgGenImage {
  const SvgGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = false;

  const SvgGenImage.vec(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
  final bool _isVecFormat;

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
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme? theme,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    final BytesLoader loader;
    if (_isVecFormat) {
      loader = AssetBytesLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
      );
    } else {
      loader = SvgAssetLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
        theme: theme,
      );
    }
    return SvgPicture(
      loader,
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      colorFilter: colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
