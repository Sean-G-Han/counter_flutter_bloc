import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NavIcon extends StatelessWidget {
  final String name;
  final String goRouterLink;
  final IconData icon;
  const NavIcon({
    super.key,
    required this.name,
    required this.goRouterLink,
    this.icon = Icons.account_balance_outlined,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 50.0, 0, 0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.zero, // Remove rounded corners
          ),
        ),
        onPressed: () => context.go(goRouterLink),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 50.0, 0),
              child: Icon(icon, color: Colors.grey, size: 40),
            ),
            Text(name),
          ],
        ),
      ),
    );
  }
}

class NavDrawer extends StatelessWidget {
  const NavDrawer({super.key});

  Widget build(BuildContext context) {
    return Drawer(
      width: 250.0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.zero, // Removes rounded edges
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
        child: ListView(
          children: [
            NavIcon(
              name: "Counter",
              goRouterLink: "/",
              icon: Icons.calculate,
            ),
            NavIcon(
              name: "Increment",
              goRouterLink: "/increment",
              icon: Icons.add,
            ),
            NavIcon(
              name: "Decrement",
              goRouterLink: "/decrement",
              icon: Icons.remove,
            ),
          ],
        ),
      ),
    );
  }
}
