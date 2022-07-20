import 'package:flutter/material.dart';
import 'package:roqquclone/widgets/wallet_item.dart';

import 'models/user.dart';
import 'models/wallet.dart';

const DUMMY_USERS = const [
  Profile(
      id: '001',
      name: 'Adubuola Oluwafemi',
      userBalance: 243892.2,
      currencyType: ['NGN', 'USD', 'GBP']),
];

const DUMMY_WALLETS = [
  Wallet(
    address: '0x272287389193778wssnjkasuyuP3uyu3yu3u33',
    amount: 5000.3,
    type: 'BTC',
    walletIcon: Icons.currency_bitcoin,
    percentage: 4,
    sign: '+',
  ),
];
