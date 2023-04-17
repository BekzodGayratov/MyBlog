import 'package:flutter/widgets.dart';

extension UniredMediaQuery on BuildContext {
  MediaQueryData get mq => MediaQuery.of(this);
  double get height => mq.size.height;
  double get width => mq.size.width;
}
