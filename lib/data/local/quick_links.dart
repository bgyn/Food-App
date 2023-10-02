import 'package:flutter/material.dart';

@immutable
class QuickLinks {
  final List _links = <String>[
    'How It Works',
    'About us',
    'Shop',
    'Sign In',
    'Sign Up',
  ];

  List getList() => _links;
}
