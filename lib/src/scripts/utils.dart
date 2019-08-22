import 'package:flutter/material.dart';

responsiveWidth(double value, BuildContext context) {
  double result = (MediaQuery.of(context).size.width / 100) * value;
  return result;
}

responsiveHeight(double value, BuildContext context) {
  double result = (MediaQuery.of(context).size.height / 100) * value;
  return result;
}