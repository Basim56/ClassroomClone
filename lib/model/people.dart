import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class People {
  People({required this.name, required this.color}) : id = const Uuid().v4();
  final String id;
  final String name;
  final Color color;
}
