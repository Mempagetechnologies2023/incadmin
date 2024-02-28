import 'package:flutter/material.dart';


import '../Booths Info/Booth1.dart';
import '../Booths Info/Booth10.dart';
import '../Booths Info/Booth2.dart';
import '../Booths Info/Booth3.dart';
import '../Booths Info/Booth4.dart';
import '../Booths Info/Booth5.dart';
import '../Booths Info/Booth6.dart';
import '../Booths Info/Booth7.dart';
import '../Booths Info/Booth8.dart';
import '../Booths Info/Booth9.dart';

class Kodangalbooths extends StatefulWidget {
  const Kodangalbooths({super.key});

  @override
  State<Kodangalbooths> createState() => _KodangalboothsState();
}

class _KodangalboothsState extends State<Kodangalbooths> {

  Locale _selectedLocale = const Locale('en', 'US');
  String _partytitleText = 'अमेठी में बूथ';
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
        _partytitleText = 'अमेठी में बूथ';
        break;
      case 'en':
        _partytitleText = 'Booth in Amethi';
        break;
      default:
        _partytitleText = 'अमेठी में बूथ';
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => BoothOne()));
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => BoothTwo()));
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
                    child: Text("$_partyBoothtitleText 3"),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BoothThree()));
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
                    child: Text("$_partyBoothtitleText 4"),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => BoothFour()));
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => BoothFive()));
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => BoothSix()));
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
                              builder: (context) => BoothSeven()));
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
                              builder: (context) => BoothEight()));
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => BoothNine()));
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => BoothTen()));
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => BoothOne()));
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
                    child: Text("$_partyBoothtitleText 12"),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => BoothTwo()));
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
                    child: Text("$_partyBoothtitleText 13"),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BoothThree()));
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
                    child: Text("$_partyBoothtitleText 14"),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => BoothFour()));
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => BoothFive()));
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => BoothSix()));
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
                              builder: (context) => BoothSeven()));
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
                              builder: (context) => BoothEight()));
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => BoothNine()));
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => BoothTen()));
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => BoothOne()));
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => BoothTwo()));
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
                    child: Text("$_partyBoothtitleText 23"),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BoothThree()));
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
                    child: Text("$_partyBoothtitleText 24"),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => BoothFour()));
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => BoothFive()));
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => BoothSix()));
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
                    child: Text("$_partyBoothtitleText 27"),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BoothSeven()));
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
                              builder: (context) => BoothEight()));
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => BoothNine()));
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => BoothTen()));
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => BoothOne()));
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => BoothTwo()));
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
                    child: Text("$_partyBoothtitleText 33"),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BoothThree()));
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
                    child: Text("$_partyBoothtitleText 34"),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => BoothFour()));
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => BoothFive()));
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => BoothSix()));
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
                              builder: (context) => BoothSeven()));
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
                              builder: (context) => BoothEight()));
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => BoothNine()));
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => BoothTen()));
                    },
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  width: 250,
                  child: MaterialButton(
                    padding: EdgeInsets.all(20),
                    textColor: Colors.black,
                    color: Colors.white,
                    child: Text("$_partyBoothtitleText 41"),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => BoothOne()));
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => BoothTwo()));
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
                    child: Text("$_partyBoothtitleText 43"),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BoothThree()));
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
                    child: Text("$_partyBoothtitleText 44"),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => BoothFour()));
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => BoothFive()));
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => BoothSix()));
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
                              builder: (context) => BoothSeven()));
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
                              builder: (context) => BoothEight()));
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => BoothNine()));
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => BoothTen()));
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => BoothTen()));
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
