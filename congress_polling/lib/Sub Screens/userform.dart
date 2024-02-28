
import 'package:congress_polling/Sub%20Screens/searchlist.dart';
import 'package:flutter/material.dart';


import '../Booths List/boothslist.dart';
import '../Login_Auth/newone.dart';

class UserForm extends StatefulWidget {
  const UserForm({super.key});

  @override
  State<UserForm> createState() => _UserFormState();
}

class _UserFormState extends State<UserForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        backgroundColor: Colors.blue[300],
        title: const Text('मतदान की जानकारी  (Polling Info)'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton.icon(
              style: TextButton.styleFrom(
                backgroundColor: Colors.blue, // foreground
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SearchList(),
                  ),
                );
              },
              icon: const Icon(
                Icons.how_to_vote_outlined,
                color: Colors.white,
                size: 42,
              ),
              label: const Text(
                'Check Voter Details\n    मतदाता विवरण जांचें',
                style: TextStyle(
                    color: Colors.white, backgroundColor: Colors.blue,fontSize: 24),
              ),
            ),
            TextButton.icon(
              style: TextButton.styleFrom(
                backgroundColor: Colors.blue,
                elevation: 5,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>  Boothlist(),
                  ),
                );
              },
              icon: const Icon(
                Icons.person_pin,
                color: Colors.white,
                size: 42,
              ),
              label: const Text(
                'Poll Management Form\n    मतदान प्रबंधन फ़ॉर्म',
                style: TextStyle(
                    color: Colors.white, backgroundColor: Colors.blue,fontSize: 24),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
