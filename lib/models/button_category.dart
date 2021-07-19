import 'package:flutter/material.dart';

class Button {
  String title;
  VoidCallback fun;
  bool selected;

  Button({
    required this.title,
    required this.fun,
    required this.selected,
  });
}
