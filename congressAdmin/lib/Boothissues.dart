import 'package:congressadmin/Booth%20Issues/Booth51.dart';
import 'package:flutter/material.dart';



import 'AgeBooths/Booth1.dart';
import 'AgeBooths/Booth3.dart';
import 'Booth Issues/Booth1.dart';
import 'Booth Issues/Booth10.dart';
import 'Booth Issues/Booth11.dart';
import 'Booth Issues/Booth12.dart';
import 'Booth Issues/Booth13.dart';
import 'Booth Issues/Booth14.dart';
import 'Booth Issues/Booth15.dart';
import 'Booth Issues/Booth16.dart';
import 'Booth Issues/Booth17.dart';
import 'Booth Issues/Booth18.dart';
import 'Booth Issues/Booth19.dart';
import 'Booth Issues/Booth2.dart';
import 'Booth Issues/Booth20.dart';
import 'Booth Issues/Booth21.dart';
import 'Booth Issues/Booth22.dart';
import 'Booth Issues/Booth23.dart';
import 'Booth Issues/Booth24.dart';
import 'Booth Issues/Booth26.dart';
import 'Booth Issues/Booth27.dart';
import 'Booth Issues/Booth28.dart';
import 'Booth Issues/Booth29.dart';
import 'Booth Issues/Booth3.dart';
import 'Booth Issues/Booth30.dart';
import 'Booth Issues/Booth31.dart';
import 'Booth Issues/Booth32.dart';
import 'Booth Issues/Booth33.dart';
import 'Booth Issues/Booth34.dart';
import 'Booth Issues/Booth35.dart';
import 'Booth Issues/Booth36.dart';
import 'Booth Issues/Booth37.dart';
import 'Booth Issues/Booth38.dart';
import 'Booth Issues/Booth39.dart';
import 'Booth Issues/Booth4.dart';
import 'Booth Issues/Booth40.dart';
import 'Booth Issues/Booth41.dart';
import 'Booth Issues/Booth42.dart';
import 'Booth Issues/Booth43.dart';
import 'Booth Issues/Booth44.dart';
import 'Booth Issues/Booth45.dart';
import 'Booth Issues/Booth46.dart';
import 'Booth Issues/Booth47.dart';
import 'Booth Issues/Booth48.dart';
import 'Booth Issues/Booth49.dart';
import 'Booth Issues/Booth5.dart';
import 'Booth Issues/Booth50.dart';
import 'Booth Issues/Booth6.dart';
import 'Booth Issues/Booth7.dart';
import 'Booth Issues/Booth8.dart';
import 'Booth Issues/Booth9.dart';
import 'Booth Issues/booth25.dart';

class BoothIssues extends StatefulWidget {
  const BoothIssues({super.key});

  @override
  State<BoothIssues> createState() => _BoothIssuesState();
}

class _BoothIssuesState extends State<BoothIssues> {

  Locale _selectedLocale = const Locale('en', 'US');

  String _partytitleText = 'अमेठी में बूथ मुद्दे';

  String _partyBoothtitleText = 'बूथ';

  void _changeLanguage(Locale newLocale) {
    setState(() {
      _selectedLocale = newLocale;
      _updatePartyTitleText();

      _updateBoothTitleText();

    });
  }

  void _updatePartyTitleText() {
    switch (_selectedLocale.languageCode) {
      case 'hi':
        _partytitleText = 'अमेठी में बूथ मुद्दे';
        break;
      case 'en':
        _partytitleText = 'Booth Issues in Amethi';
        break;
      default:
        _partytitleText = 'अमेठी में बूथ मुद्दे';
    }
  }

  void _updateBoothTitleText() {
    switch (_selectedLocale.languageCode) {
      case 'hi':
        _partyBoothtitleText = 'बूथ';
        break;
      case 'en':
        _partyBoothtitleText = 'Booth';
        break;
      default:
        _partyBoothtitleText = 'बूथ';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: Text(_partytitleText),
        backgroundColor: Colors.blue[300],
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () => _changeLanguage(const Locale('en', 'EN')),
            child: Text('EN'),
          ),
          SizedBox(height: 16),
          FloatingActionButton(
            onPressed: () => _changeLanguage(const Locale('hi', 'HI')),
            child: Text('HI'),
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(50),
            child: Column(
              children: <Widget>[
                Container(
                  width: 250,
                  child: MaterialButton(
                    padding: EdgeInsets.all(20),
                    textColor: Colors.white,
                    color: Colors.orange[900],
                    child: Text("$_partyBoothtitleText 1"),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BoothOneIssues()));
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 250,
                  child: MaterialButton(
                    padding: EdgeInsets.all(20),
                    textColor: Colors.black,
                    color: Colors.white,
                    child: Text("$_partyBoothtitleText 2"),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BoothTwoIssues()));
                    },
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: 250,
                  child: MaterialButton(
                    padding: EdgeInsets.all(20),
                    textColor: Colors.white,
                    color: Colors.green[900],
                    child: Text("$_partyBoothtitleText 3"),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BoothThreeIssues()));
                    },
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: 250,
                  child: MaterialButton(
                    padding: EdgeInsets.all(20),
                    textColor: Colors.white,
                    color: Colors.orange[900],
                    child: Text("$_partyBoothtitleText 4"),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BoothFourIssues()));
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 250,
                  child: MaterialButton(
                    padding: EdgeInsets.all(20),
                    textColor: Colors.black,
                    color: Colors.white,
                    child: Text("$_partyBoothtitleText 5"),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BoothFiveIssues()));
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 250,
                  child: MaterialButton(
                    padding: EdgeInsets.all(20),
                    textColor: Colors.white,
                    color: Colors.green[900],
                    child: Text("$_partyBoothtitleText 6"),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BoothSixIssues()));
                    },
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: 250,
                  child: MaterialButton(
                    padding: EdgeInsets.all(20),
                    textColor: Colors.white,
                    color: Colors.orange[900],
                    child: Text("$_partyBoothtitleText 7"),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BoothSevenIssues()));
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 250,
                  child: MaterialButton(
                    padding: EdgeInsets.all(20),
                    textColor: Colors.black,
                    color: Colors.white,
                    child: Text("$_partyBoothtitleText 8"),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BoothEightIssues()));
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 250,
                  child: MaterialButton(
                    padding: EdgeInsets.all(20),
                    textColor: Colors.white,
                    color: Colors.green[900],
                    child: Text("$_partyBoothtitleText 9"),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BoothNineIssues()));
                    },
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: 250,
                  child: MaterialButton(
                    padding: EdgeInsets.all(20),
                    textColor: Colors.white,
                    color: Colors.orange[900],
                    child: Text("$_partyBoothtitleText 10"),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BoothTenIssues()));
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 250,
                  child: MaterialButton(
                    padding: EdgeInsets.all(20),
                    textColor: Colors.black,
                    color: Colors.white,
                    child: Text("$_partyBoothtitleText 11"),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Booth11Issues()));
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 250,
                  child: MaterialButton(
                    padding: EdgeInsets.all(20),
                    textColor: Colors.white,
                    color: Colors.green[700],
                    child: Text("$_partyBoothtitleText 12"),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Booth12Issues()));
                    },
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: 250,
                  child: MaterialButton(
                    padding: EdgeInsets.all(20),
                    textColor: Colors.white,
                    color: Colors.orange[900],
                    child: Text("$_partyBoothtitleText 13"),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Booth13Issues()));
                    },
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: 250,
                  child: MaterialButton(
                    padding: EdgeInsets.all(20),
                    textColor: Colors.black,
                    color: Colors.white,
                    child: Text("$_partyBoothtitleText 14"),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Booth14Issues()));
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 250,
                  child: MaterialButton(
                    padding: EdgeInsets.all(20),
                    textColor: Colors.white,
                    color: Colors.green[900],
                    child: Text("$_partyBoothtitleText 15"),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Booth15Issues()));
                    },
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: 250,
                  child: MaterialButton(
                    padding: EdgeInsets.all(20),
                    textColor: Colors.white,
                    color: Colors.orange[900],
                    child: Text("$_partyBoothtitleText 16"),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Booth16Issues()));
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 250,
                  child: MaterialButton(
                    padding: EdgeInsets.all(20),
                    textColor: Colors.black,
                    color: Colors.white,
                    child: Text("$_partyBoothtitleText 17"),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Booth17Issues()));
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 250,
                  child: MaterialButton(
                    padding: EdgeInsets.all(20),
                    textColor: Colors.white,
                    color: Colors.green[900],
                    child: Text("$_partyBoothtitleText 18"),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Booth18Issues()));
                    },
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: 250,
                  child: MaterialButton(
                    padding: EdgeInsets.all(20),
                    textColor: Colors.white,
                    color: Colors.orange[900],
                    child: Text("$_partyBoothtitleText 19"),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Booth19Issues()));
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 250,
                  child: MaterialButton(
                    padding: EdgeInsets.all(20),
                    textColor: Colors.black,
                    color: Colors.white,
                    child: Text("$_partyBoothtitleText 20"),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Booth20Issues()));
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 250,
                  child: MaterialButton(
                    padding: EdgeInsets.all(20),
                    textColor: Colors.white,
                    color: Colors.green[900],
                    child: Text("$_partyBoothtitleText 21"),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Booth21Issues()));
                    },
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: 250,
                  child: MaterialButton(
                    padding: EdgeInsets.all(20),
                    textColor: Colors.white,
                    color: Colors.orange[900],
                    child: Text("$_partyBoothtitleText 22"),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Booth22Issues()));
                    },
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: 250,
                  child: MaterialButton(
                    padding: EdgeInsets.all(20),
                    textColor: Colors.black,
                    color: Colors.white,
                    child: Text("$_partyBoothtitleText 23"),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Booth23Issues()));
                    },
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: 250,
                  child: MaterialButton(
                    padding: EdgeInsets.all(20),
                    textColor: Colors.white,
                    color: Colors.green[900],
                    child: Text("$_partyBoothtitleText 24"),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Booth24Issues()));
                    },
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: 250,
                  child: MaterialButton(
                    padding: EdgeInsets.all(20),
                    textColor: Colors.white,
                    color: Colors.orange[900],
                    child: Text("$_partyBoothtitleText 25"),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Booth25Issues()));
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 250,
                  child: MaterialButton(
                    padding: EdgeInsets.all(20),
                    textColor: Colors.black,
                    color: Colors.white,
                    child: Text("$_partyBoothtitleText 26"),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Booth26Issues()));
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 250,
                  child: MaterialButton(
                    padding: EdgeInsets.all(20),
                    textColor: Colors.white,
                    color: Colors.green[900],
                    child: Text('Booth 27'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Booth27Issues()));
                    },
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: 250,
                  child: MaterialButton(
                    padding: EdgeInsets.all(20),
                    textColor: Colors.white,
                    color: Colors.orange[900],
                    child: Text("$_partyBoothtitleText 28"),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Booth28Issues()));
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 250,
                  child: MaterialButton(
                    padding: EdgeInsets.all(20),
                    textColor: Colors.black,
                    color: Colors.white,
                    child: Text("$_partyBoothtitleText 29"),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Booth29Issues()));
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 250,
                  child: MaterialButton(
                    padding: EdgeInsets.all(20),
                    textColor: Colors.white,
                    color: Colors.green[900],
                    child: Text("$_partyBoothtitleText 30"),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Booth30Issues()));
                    },
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: 250,
                  child: MaterialButton(
                    padding: EdgeInsets.all(20),
                    textColor: Colors.white,
                    color: Colors.orange[900],
                    child: Text("$_partyBoothtitleText 31"),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Booth31Issues()));
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 250,
                  child: MaterialButton(
                    padding: EdgeInsets.all(20),
                    textColor: Colors.black,
                    color: Colors.white,
                    child: Text("$_partyBoothtitleText 32"),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Booth32Issues()));
                    },
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: 250,
                  child: MaterialButton(
                    padding: EdgeInsets.all(20),
                    textColor: Colors.white,
                    color: Colors.green[900],
                    child: Text("$_partyBoothtitleText 33"),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Booth33Issues()));
                    },
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: 250,
                  child: MaterialButton(
                    padding: EdgeInsets.all(20),
                    textColor: Colors.white,
                    color: Colors.orange[900],
                    child: Text("$_partyBoothtitleText 34"),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Booth34Issues()));
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 250,
                  child: MaterialButton(
                    padding: EdgeInsets.all(20),
                    textColor: Colors.black,
                    color: Colors.white,
                    child: Text("$_partyBoothtitleText 35"),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Booth35Issues()));
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 250,
                  child: MaterialButton(
                    padding: EdgeInsets.all(20),
                    textColor: Colors.white,
                    color: Colors.green[900],
                    child: Text("$_partyBoothtitleText 36"),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Booth36Issues()));
                    },
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: 250,
                  child: MaterialButton(
                    padding: EdgeInsets.all(20),
                    textColor: Colors.white,
                    color: Colors.orange[900],
                    child: Text("$_partyBoothtitleText 37"),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Booth37Issues()));
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 250,
                  child: MaterialButton(
                    padding: EdgeInsets.all(20),
                    textColor: Colors.black,
                    color: Colors.white,
                    child: Text("$_partyBoothtitleText 38"),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Booth38Issues()));
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 250,
                  child: MaterialButton(
                    padding: EdgeInsets.all(20),
                    textColor: Colors.white,
                    color: Colors.green[900],
                    child: Text("$_partyBoothtitleText 39"),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Booth39Issues()));
                    },
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: 250,
                  child: MaterialButton(
                    padding: EdgeInsets.all(20),
                    textColor: Colors.white,
                    color: Colors.orange[900],
                    child: Text("$_partyBoothtitleText 40"),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Booth40Issues()));
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 250,
                  child: MaterialButton(
                    padding: EdgeInsets.all(20),
                    textColor: Colors.black,
                    color: Colors.white,
                    child: Text("$_partyBoothtitleText 41"),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Booth41Issues()));
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 250,
                  child: MaterialButton(
                    padding: EdgeInsets.all(20),
                    textColor: Colors.white,
                    color: Colors.green[900],
                    child: Text("$_partyBoothtitleText 42"),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Booth42Issues()));
                    },
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: 250,
                  child: MaterialButton(
                    padding: EdgeInsets.all(20),
                    textColor: Colors.white,
                    color: Colors.orange[900],
                    child: Text("$_partyBoothtitleText 43"),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Booth43Issues()));
                    },
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: 250,
                  child: MaterialButton(
                    padding: EdgeInsets.all(20),
                    textColor: Colors.black,
                    color: Colors.white,
                    child: Text("$_partyBoothtitleText 44"),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Booth44Issues()));
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 250,
                  child: MaterialButton(
                    padding: EdgeInsets.all(20),
                    textColor: Colors.white,
                    color: Colors.green[900],
                    child: Text("$_partyBoothtitleText 45"),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Booth45Issues()));
                    },
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: 250,
                  child: MaterialButton(
                    padding: EdgeInsets.all(20),
                    textColor: Colors.white,
                    color: Colors.orange[900],
                    child: Text("$_partyBoothtitleText 46"),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Booth46Issues()));
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 250,
                  child: MaterialButton(
                    padding: EdgeInsets.all(20),
                    textColor: Colors.black,
                    color: Colors.white,
                    child: Text("$_partyBoothtitleText 47"),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Booth47Issues()));
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 250,
                  child: MaterialButton(
                    padding: EdgeInsets.all(20),
                    textColor: Colors.white,
                    color: Colors.green[900],
                    child: Text("$_partyBoothtitleText 48"),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Booth48Issues()));
                    },
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: 250,
                  child: MaterialButton(
                    padding: EdgeInsets.all(20),
                    textColor: Colors.white,
                    color: Colors.orange[900],
                    child: Text("$_partyBoothtitleText 49"),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Booth49Issues()));
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 250,
                  child: MaterialButton(
                    padding: EdgeInsets.all(20),
                    textColor: Colors.black,
                    color: Colors.white,
                    child: Text("$_partyBoothtitleText 50"),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Booth50Issues()));
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 250,
                  child: MaterialButton(
                    padding: EdgeInsets.all(20),
                    textColor: Colors.white,
                    color: Colors.green[900],
                    child: Text("$_partyBoothtitleText 51"),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Booth51Issues()));
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
