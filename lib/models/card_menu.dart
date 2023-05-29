import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class CardMenuModel{
  final String title;
  final IconData icon;

  CardMenuModel({
    required this.title,
    required this.icon,
  });

  static List<CardMenuModel> list = [
    CardMenuModel(
      title: 'Account',
      icon: PhosphorIcons.fill.wallet,
    ),
    CardMenuModel(
      title: 'Cards',
      icon: PhosphorIcons.fill.creditCard,
    ),
    CardMenuModel(
      title: 'Payments',
      icon: PhosphorIcons.regular.currencyCircleDollar,
    ),
    CardMenuModel(
      title: 'New Account',
      icon: PhosphorIcons.regular.filePlus,
    ),
    CardMenuModel(
      title: 'Cash to ATM',
      icon: PhosphorIcons.regular.money,
    ),
    CardMenuModel(
      title: 'Transfer',
      icon: Icons.currency_exchange,
    ),
    CardMenuModel(
      title: 'Scan QR',
      icon: PhosphorIcons.regular.qrCode,
    ),
    CardMenuModel(
      title: 'Loans',
      icon: PhosphorIcons.fill.handCoins,
    ),
    CardMenuModel(
      title: 'Services',
      icon: Icons.category,
    ),
  ];
}