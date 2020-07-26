import 'package:flutter/cupertino.dart';


class Paddings {
  // Vertical spacing constants. Adjust to your liking.
  static const double _VerticalSpaceTiny = 5.0;
  static const double _VerticalSpaceSmall = 10.0;
  static const double _VerticalSpaceMedium = 20.0;
  static const double _VerticalSpaceLarge = 60.0;

  // Horizontal spacing constants. Adjust to your liking.
  static const double _HorizontalSpaceTiny = 5.0;
  static const double _HorizontalSpaceSmall = 10.0;
  static const double _HorizontalSpaceMedium = 20.0;
  static const double _HorizontalSpaceLarge = 60.0;
  // Widgets to be used instead of padding
  static const Widget verticalSpaceTiny = SizedBox(height: _VerticalSpaceTiny);
  static const Widget verticalSpaceSmall =
  SizedBox(height: _VerticalSpaceSmall);
  static const Widget verticalSpaceMedium =
  SizedBox(height: _VerticalSpaceMedium);
  static const Widget verticalSpaceLarge =
  SizedBox(height: _VerticalSpaceLarge);

  static const Widget horizontalSpaceTiny =
  SizedBox(width: _HorizontalSpaceTiny);
  static const Widget horizontalSpaceSmall =
  SizedBox(width: _HorizontalSpaceSmall);
  static const Widget horizontalSpaceMedium =
  SizedBox(width: _HorizontalSpaceMedium);
  static const Widget horizontalSpaceLarge =
  SizedBox(width: _HorizontalSpaceLarge);

  horizontalGap(int size) {
    return Container(width: size.toDouble());
  }

  verticalGap(int size) {
    return Container(height: size.toDouble());
  }
}