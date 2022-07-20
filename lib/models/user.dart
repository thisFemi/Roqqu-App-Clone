import 'package:flutter/material.dart';

class Profile {
  final String id;
  final String name;
  final double userBalance;
  final List<String> currencyType;

  const Profile({
    required this.id,
    required this.name,
    required this.userBalance,
    required this.currencyType,
  });
}
