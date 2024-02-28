import 'package:flutter/material.dart';
import 'Admin/adminlogin.dart';
import 'Agewisebooths.dart';
import 'Boothissues.dart';
import 'Districts/Kodangal.dart';
import 'Influencerbooths.dart';
import 'authservice.dart';

class BootList extends StatelessWidget {
  const BootList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[700],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text("Admin Page",style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w800,
          fontSize: 20,
        ),),
        actions: [
          IconButton(
            onPressed: () {
              AuthService authService = AdminLoginScreen() as AuthService;
              authService.logOutUser(context);
            },
            icon: const Icon(Icons.logout,),
            color: Colors.white,
          )
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(25),
            child: Column(
              children: <Widget>[
                Container(
                  height: 100,
                  width: 210,
                  child: MaterialButton(
                    padding: EdgeInsets.all(20),
                    textColor: Colors.white,
                    color: Colors.blue[900],
                    child: Text('Booths',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800),),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Kodangalbooths()));
                    },
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Container(
                  height: 100,
                  width: 210,
                  child: MaterialButton(
                    padding: EdgeInsets.all(20),
                    textColor: Colors.white,
                    color: Colors.blue[900],
                    child: Text('Age Wise',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800),),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Agewisebooths()));
                    },
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  height: 100,
                  width: 210,
                  child: MaterialButton(
                    padding: EdgeInsets.all(20),
                    textColor: Colors.white,
                    color: Colors.blue[900],
                    child: Text(
                      'Influencers',
                      style:
                          TextStyle(fontWeight: FontWeight.w800, fontSize: 20),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Influencerbooths()));
                    },
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  height: 100,
                  width: 210,
                  child: MaterialButton(
                    padding: EdgeInsets.all(20),
                    textColor: Colors.white,
                    color: Colors.blue[900],
                    child: Text(
                      'Booth Issues',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BoothIssues()));
                    },
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
