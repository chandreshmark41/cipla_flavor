import 'package:cipla/flutter_flow/custom_functions.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:cipla/main.dart';

void main() {
  test('Counter value should be incremented', () async {
    await Firebase.initializeApp();
   List<String> checkListValue =["a","v","y"];
    getCheckboxValue(checkListValue);

    expect(getCheckboxValue(checkListValue), true);
  });
}
