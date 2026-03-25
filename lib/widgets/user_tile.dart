import 'package:flutter/material.dart';
import '../models/user_model.dart';
import '../screens/profile_screen.dart';

class UserTile extends StatelessWidget {
  final User user;

  const UserTile({required this.user});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage:
            NetworkImage("https://i.pravatar.cc/150?img=${user.id}"),
      ),
      title: Text(user.name),
      subtitle: Text(user.email),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => ProfileScreen(user: user),
          ),
        );
      },
    );
  }
}