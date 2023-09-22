import 'package:flutter/material.dart';

Widget heightspace(double height, [Widget? child]) {
  return SizedBox(
    height: height,
    child: child,
  );
}

Widget widthspace(double width, [Widget? child]) {
  return SizedBox(
    width: width,
    child: child,
  );
}
