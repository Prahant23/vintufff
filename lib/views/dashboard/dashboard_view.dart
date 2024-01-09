import 'package:flutter/material.dart';
import 'package:pandabar/main.view.dart';
import 'package:pandabar/model.dart';
import 'package:second_app/views/dashboard/dashboard_home.dart';
import 'package:second_app/views/dashboard/dashboard_notification.dart';
import 'package:second_app/views/dashboard/dashboard_profile.dart';
import 'package:second_app/views/dashboard/dashnoard_message.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  String page = 'Grey';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: PandaBar(
        buttonData: [
          PandaBarButtonData(id: 'Home', icon: Icons.home, title: 'Home'),
          PandaBarButtonData(
              id: 'Cart', icon: Icons.shopping_basket, title: 'Cart'),
          PandaBarButtonData(
              id: 'Notification',
              icon: Icons.favorite_outline,
              title: 'favorite'),
          PandaBarButtonData(
              id: 'Profile', icon: Icons.people, title: 'Profile'),
        ],
        onChange: (id) {
          setState(() {
            page = id;
          });
        },
        onFabButtonPressed: () {},
      ),
      body: Builder(
        builder: (context) {
          switch (page) {
            case 'Home':
              return HomePage();
            case 'Add to Cart':
              return DashboardMessage();
            case 'Notification':
              return DashboardNoitification();
            case 'Profile':
              return DashboardProfile();
            default:
              return HomePage();
          }
        },
      ),
    );
  }
}
