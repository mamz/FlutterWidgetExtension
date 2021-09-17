library flutter_widget_extension;

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

extension WidgetExtension on Widget {
  Widget decoration(Decoration decoration) {
    return Container(
      decoration: decoration,
      child: this,
    );
  }

  Widget padding(EdgeInsetsGeometry padding) {
    return Padding(
      padding: padding,
      child: this,
    );
  }

  Widget margin(EdgeInsetsGeometry margin) {
    return Container(
      margin: margin,
      child: this,
    );
  }

  Widget backgroundColor(Color color) {
    return Container(
      color: color,
      child: this,
    );
  }

  Widget alignment(AlignmentGeometry alignment) {
    return Container(
      alignment: alignment,
      child: this,
    );
  }

  Widget center() {
    return Center(
      child: this,
    );
  }

  Widget onTap(GestureTapCallback callback) {
    return GestureDetector(
      onTap: callback,
      child: this,
    );
  }

  Widget hero(Object tag) {
    return Hero(
      tag: tag,
      child: this,
    );
  }

  Widget round(double radius) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: this,
    );
  }

  Widget stadium() {
    return round(10000.0);
  }

  Widget oval() {
    return ClipOval(
      child: this,
    );
  }

  Widget expand({int flex = 1}) {
    return Expanded(
      flex: flex,
      child: this,
    );
  }

  Widget opacity(double opacity) {
    return Opacity(
      opacity: opacity,
      child: this,
    );
  }

  Widget verticalScrollable() {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: this,
    );
  }

  Widget horizontalScrollable() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: this,
    );
  }

  Widget material() {
    return Material(
      child: this,
    );
  }

  /// Add a badge widget on target. Default to add it to right top corner
  /// * [hMargin] is the horizontal distance to left or right margin decided by [alignment]
  /// * [vMargin] is the vertical distance to top or bottom margin decided by [alignment]
  Widget badge(Widget child,
      {AlignmentDirectional alignment = AlignmentDirectional.topEnd, double? hMargin, double? vMargin}) {
    double top = 0.0;
    double bottom = 0.0;
    double left = 0.0;
    double right = 0.0;
    if (vMargin != null) {
      if (alignment.y < 0.0) {
        top = vMargin;
      } else if (alignment.y > 0.0) {
        bottom = vMargin;
      }
    }
    if (hMargin != null) {
      if (alignment.start < 0.0) {
        left = hMargin;
      } else if (alignment.start > 0.0) {
        right = hMargin;
      }
    }
    return Stack(alignment: alignment, children: <Widget>[
      this,
      Container(
        margin: EdgeInsets.only(left: left, right: right, top: top, bottom: bottom),
        child: child,
      )
    ]);
  }
}

vSpace(double height) => SizedBox(
      height: height,
    );

hSpace(double width) => SizedBox(
      width: width,
    );
