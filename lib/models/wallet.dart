import 'package:flutter/material.dart';

class Wallet {
  final String address;
  final String type;
  final double amount;
  final IconData walletIcon;
  final double percentage;
  final String sign;
  const Wallet(
      {required this.address,
      required this.type,
      required this.amount,
      required this.walletIcon,
      required this.percentage,
      required this.sign});
}
