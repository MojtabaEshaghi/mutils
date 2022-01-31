import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mutils/mutils.dart';

void main() {
  test("test material color ", () {
    final mUtils = MUI();
    expect(
        mUtils.appTheme(Color(0xff636987), null),
        ThemeData(
            primarySwatch: mUtils.generateMaterialColor(Color(0xff636987))));
  });
}
