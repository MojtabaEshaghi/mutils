import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mutils/mutils.dart';

void main() {
  test("test material color ", () {
    expect(
        Mut.appTheme(Color(0xff636987), null),
        ThemeData(
            primarySwatch: Mut.generateMaterialColor(Color(0xff636987))));
  });
}
