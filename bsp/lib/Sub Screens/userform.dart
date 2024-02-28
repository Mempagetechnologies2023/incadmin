
import 'package:bsp/Sub%20Screens/searchlist.dart';
import 'package:bsp/Sub%20Screens/transferdata.dart';
import 'package:flutter/material.dart';

import '../Booths List/boothlist.dart';


class UserForm extends StatefulWidget {
  const UserForm({super.key});

  @override
  State<UserForm> createState() => _UserFormState();
}

class _UserFormState extends State<UserForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: const Text('Polling Info',style: TextStyle(color: Colors.white),),
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
                'Check Your Status',
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
                'Voter Details',
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
