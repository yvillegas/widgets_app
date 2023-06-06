import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subtitle;
  final String link;
  final IconData icon;

  const MenuItem(
      {required this.title,
      required this.subtitle,
      required this.link,
      required this.icon});
}

const appMenuItems = <MenuItem>[
  MenuItem(
      title: 'Tarjetas',
      subtitle: 'Varios tarjetas',
      link: '/buttons',
      icon: Icons.credit_card),
  MenuItem(
      title: 'Botones',
      subtitle: 'Varios botones',
      link: '/cards',
      icon: Icons.smart_button_outlined),
];
