import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

import '../view/home_page.dart';

List<Widget> screens() {
  return [
    const HomePage(),
    const RequestsPage(),

    const AddService(), // Placeholder for Add Service, action handled separately
    const NotificationPage(),
    const ProfilePage(),
  ];
}

List<PersistentBottomNavBarItem> navBarItems() {
  return [
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.home),
      title: "الرئيسية",
      activeColorPrimary: Colors.green,
      inactiveColorPrimary: Colors.grey,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.local_shipping_outlined),
      title: "الطلبات",
      activeColorPrimary: Colors.green,
      inactiveColorPrimary: Colors.grey,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(
        Icons.add,
        color: Colors.white,
      ),
      title: "طلب خدمة",
      activeColorPrimary: Colors.green,
      inactiveColorPrimary: Colors.grey,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.notifications),
      title: "الاشعارات",
      activeColorPrimary: Colors.green,
      inactiveColorPrimary: Colors.grey,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.person),
      title: "حسابي",
      activeColorPrimary: Colors.green,
      inactiveColorPrimary: Colors.grey,
    ),
  ];
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("ProfileScreen"),
      ),
    );
  }
}

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("NotificationPage"),
      ),
    );
  }
}

class AddService extends StatelessWidget {
  const AddService({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("AddService"),
      ),
    );
  }
}

class RequestsPage extends StatelessWidget {
  const RequestsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("RequestsPage"),
      ),
    );
  }
}
