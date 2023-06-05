import 'package:flutter/material.dart';
import 'colors/app.colors.dart';
import 'dimentions/app.dimensions.dart';

class Resources {

  // ignore: unused_field
  final BuildContext _context;

  Resources(this._context);

  AppColors get color {
    return AppColors();
  }

  AppDimension get dimension {
    return AppDimension();
  }

  static Resources of(BuildContext context){
    return Resources(context);
  }

}