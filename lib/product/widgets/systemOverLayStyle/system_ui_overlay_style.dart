import 'package:flutter/services.dart';

import '../../utility/colors/colors.dart';

class CustomSystemOverlay extends SystemUiOverlayStyle {
  static const SystemUiOverlayStyle lightSystemOverlay =
      SystemUiOverlayStyle(statusBarColor: ColorUtility.tdkPageBackground, statusBarIconBrightness: Brightness.dark);
}
