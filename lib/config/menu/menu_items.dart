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
      link: '/cards',
      icon: Icons.credit_card),
  MenuItem(
      title: 'Botones',
      subtitle: 'Varios botones',
      link: '/buttons',
      icon: Icons.smart_button_outlined),
  MenuItem(
      title: 'ProgressIndicators',
      subtitle: 'Generales y controlados',
      link: '/progress',
      icon: Icons.refresh_rounded),
  MenuItem(
      title: 'Snackbars',
      subtitle: 'Indicadores en pantalla',
      link: '/snackbars',
      icon: Icons.info_outline),
  MenuItem(
      title: 'Animated Container',
      subtitle: 'Controles de animación',
      link: '/animated',
      icon: Icons.check_box_outline_blank_rounded),
  MenuItem(
      title: 'UI Controls + Tiles',
      subtitle: 'Controles de flutter',
      link: '/ui-controls',
      icon: Icons.car_rental_outlined),
  MenuItem(
      title: 'Introducción a la aplicación',
      subtitle: 'Tutorial',
      link: '/tutorial',
      icon: Icons.accessible_rounded),
];
