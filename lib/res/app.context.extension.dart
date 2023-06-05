import 'package:flutter/material.dart';
import 'package:mvvm/res/resources.dart';

extension AppContextExtension on BuildContext {
  Resources get resources => Resources.of(this);
}
