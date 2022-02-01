import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mutils/mutils.dart';

void main() {
  test("test material color ", () {
    expect(
        Mut.appTheme(color:Color(0xff636987)),
        ThemeData(
            primarySwatch: Mut.generateMaterialColor(Color(0xff636987))));
  });


  test("test font",(){
    expect(
      Mut.mtStyle(),
      TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.normal,
        fontSize: 14.0
      )
    );
  });
}
