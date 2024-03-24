import 'package:flutter/material.dart';
import 'package:scout/presentation/constants/app_contants.dart';

class ScreenSizeService {
  static final ScreenSizeService _screenSizeService = ScreenSizeService._internal();

  factory ScreenSizeService() {
    return _screenSizeService;
  }

  ScreenSizeService._internal();

  static bool isMobileOrTablet(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    bool isMobileOrTablet = screenSize.width < AppConstants.mobileOrTabletBreakpoint;
    return isMobileOrTablet;
  }
}