import 'package:flutter/material.dart';
import 'package:roqquclone/my-globals.dart' as user;

List<Map> walletCurrent = [
  {"type": 'BTC', "Icon": Icon(Icons.currency_bitcoin), "value": user.btcValue},
  {
    "type": 'USD-T',
    "Icon": Icon(
      Icons.attach_money_sharp,
    ),
    "value": user.tetherValue
  },
  {
    "type": 'ETH',
    "Icon": Icon(
      Icons.euro,
    ),
    "value": user.ethValue
  },
  {
    "type": 'XRP',
    "Icon": Icon(
      Icons.euro,
    ),
    "value": user.xrpValue
  },
  {
    "type": 'DogeCoin',
    "Icon": Icon(
      Icons.euro,
    ),
    "value": user.dogeValue
  },
  {
    "type": 'TRX',
    "Icon": Icon(
      Icons.euro,
    ),
    "value": user.trxValue
  },
  {
    "type": 'ETH',
    "Icon": Icon(
      Icons.euro,
    ),
    "value": user.trxValue
  },
];
