import 'package:flutter/material.dart';
import 'package:scout/application/services/util/screen_size_service.dart';

enum EdgeInsetSize {
  inset1,
  inset2,
  inset3,
  inset4,
  inset5,
  inset6
}

enum EdgeInsetDirections {
  left,
  right,
  top,
  bottom,
}

const Map<EdgeInsetSize, double> mobileOrTabletSizes = {
  EdgeInsetSize.inset1: 4,
  EdgeInsetSize.inset2: 8,
  EdgeInsetSize.inset3: 12,
  EdgeInsetSize.inset4: 16,
  EdgeInsetSize.inset5: 32,
  EdgeInsetSize.inset6: 48,
};

const Map<EdgeInsetSize, double> desktopSizes = {
  EdgeInsetSize.inset1: 6,
  EdgeInsetSize.inset2: 12,
  EdgeInsetSize.inset3: 18,
  EdgeInsetSize.inset4: 24,
  EdgeInsetSize.inset5: 48,
  EdgeInsetSize.inset6: 72,
};

const double defaultSize = 0;

class EdgeInsetsService {
  static final EdgeInsetsService _edgeInsetsService = EdgeInsetsService._internal();

  factory EdgeInsetsService() {
    return _edgeInsetsService;
  }

  EdgeInsetsService._internal();

  static Map<EdgeInsetSize, double> getEdgeInsetSizes(BuildContext context) {
    bool isMobileOrTablet = ScreenSizeService.isMobileOrTablet(context);

    if (isMobileOrTablet) {
      return mobileOrTabletSizes;
    }
    return desktopSizes;
  }

  static EdgeInsets horizontal(BuildContext context, EdgeInsetSize size) {
    Map<EdgeInsetSize, double> sizes = getEdgeInsetSizes(context);

    return EdgeInsets.symmetric(horizontal: sizes[size] ?? defaultSize);
  }

  static EdgeInsets vertical(BuildContext context, EdgeInsetSize size) {
    Map<EdgeInsetSize, double> sizes = getEdgeInsetSizes(context);

    return EdgeInsets.symmetric(vertical: sizes[size] ?? defaultSize);
  }

  static EdgeInsets all(BuildContext context, EdgeInsetSize size) {
    Map<EdgeInsetSize, double> sizes = getEdgeInsetSizes(context);

    return EdgeInsets.all(sizes[size] ?? defaultSize);
  }

  static EdgeInsets only(
    BuildContext context,
    Map<EdgeInsetDirections, EdgeInsetSize> directionSizes
  ) {
    Map<EdgeInsetSize, double> sizes = getEdgeInsetSizes(context);

    return EdgeInsets.only(
      left: sizes[directionSizes[EdgeInsetDirections.left]] ?? 0,
      right: sizes[directionSizes[EdgeInsetDirections.left]] ?? 0,
      top: sizes[directionSizes[EdgeInsetDirections.left]] ?? 0,
      bottom: sizes[directionSizes[EdgeInsetDirections.left]] ?? 0,
    );

  }
}
