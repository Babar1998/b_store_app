import 'package:b_store_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class BSpacingStyle {
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: BSizes.appbarHeight,
    left: BSizes.defaultSpace,
    bottom: BSizes.defaultSpace,
    right: BSizes.defaultSpace,
  );
}
