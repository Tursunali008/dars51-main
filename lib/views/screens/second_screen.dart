import 'package:dars51/views/screens/profile_screen.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  final String username;
  const SecondScreen({
    super.key,
     required this.username
  });

  @override
  Widget build(BuildContext context) {
    final username = ModalRoute.of(context)!.settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Ikkinchi Sahifa"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (ctx) {
                    return const ProfileScreen(
                      username: "Javohir Bro!",
                    );
                  },
                ),
              );
            },
            icon: const Icon(Icons.person),
          ),
        ],
      ),
      body: Center(
        child: Text("$username: Ikkinchi sahifaga xush kelibsiz!"),
      ),
    );
  }
}
