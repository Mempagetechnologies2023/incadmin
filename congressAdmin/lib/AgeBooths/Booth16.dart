import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Booth16Data extends StatefulWidget {
  const Booth16Data({super.key});

  @override
  State<Booth16Data> createState() => _Booth16DataState();
}

class _Booth16DataState extends State<Booth16Data> {


  Locale _selectedLocale = const Locale('en', 'US');

  String _partytitleText = 'आयुवार डेटा में';

  String _partyBoothtitleText = 'बूथ';

  String _party18to25titleText = '18 - 25 आयु';
  String _party26to35titleText = '26 - 35 आयु';
  String _party36to50titleText = '36 - 60 आयु';
  String _party50abovetitleText = '60 + आयु';
  String _partyUserCounttitleText = 'उपयोगकर्ता संख्या';

  void _changeLanguage(Locale newLocale) {
    setState(() {
      _selectedLocale = newLocale;
      _updatePartyTitleText();

      _updateBoothTitleText();

      _update18to25TitleText();
      _update26to35TitleText();
      _update36to50TitleText();
      _update50aboveTitleText();
      _updateUserCountTitleText();

    });
  }

  void _updatePartyTitleText() {
    switch (_selectedLocale.languageCode) {
      case 'hi':
        _partytitleText = 'आयुवार डेटा में';
        break;
      case 'en':
        _partytitleText = 'AgeWise Data in ';
        break;
      default:
        _partytitleText = 'आयुवार डेटा में';
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

  void _update18to25TitleText() {
    switch (_selectedLocale.languageCode) {
      case 'hi':
        _party18to25titleText = '18 - 25 आयु';
        break;
      case 'en':
        _party18to25titleText = '18 - 25 Age';
        break;
      default:
        _party18to25titleText = '18 - 25 आयु';
    }
  }

  void _update26to35TitleText() {
    switch (_selectedLocale.languageCode) {
      case 'hi':
        _party26to35titleText = '26 - 35 आयु';
        break;
      case 'en':
        _party26to35titleText = '26 - 35 Age';
        break;
      default:
        _party26to35titleText = '26 - 35 आयु';
    }
  }

  void _update36to50TitleText() {
    switch (_selectedLocale.languageCode) {
      case 'hi':
        _party36to50titleText = '36 - 60 आयु';
        break;
      case 'en':
        _party36to50titleText = '36 - 60 Age';
        break;
      default:
        _party36to50titleText = '36 - 60 आयु';
    }
  }

  void _update50aboveTitleText() {
    switch (_selectedLocale.languageCode) {
      case 'hi':
        _party50abovetitleText = '60 + आयु';
        break;
      case 'en':
        _party50abovetitleText = '60 + Age';
        break;
      default:
        _party50abovetitleText = '60 + आयु';
    }
  }

  void _updateUserCountTitleText() {
    switch (_selectedLocale.languageCode) {
      case 'hi':
        _partyUserCounttitleText = 'उपयोगकर्ता संख्या';
        break;
      case 'en':
        _partyUserCounttitleText = 'User Count';
        break;
      default:
        _partyUserCounttitleText = 'उपयोगकर्ता संख्या';
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        backgroundColor: Colors.blue[300],
        title:  Text(
          "$_partytitleText $_partyBoothtitleText 16",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800,color: Colors.black),
        ),
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
      body: Center(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            const SizedBox(
              height: 200,
            ),
            FutureBuilder<QuerySnapshot>(
              future: FirebaseFirestore.instance.collection('booth16').get(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return CircularProgressIndicator();
                } else if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                } else {
                  int age18to25Count = 0;
                  int age26to35Count = 0;
                  int age36to60Count = 0;
                  int age60to100Count = 0;

                  for (var doc in snapshot.data!.docs) {
                    // Ensure 'age' is treated as an integer
                    if (doc['age'] is int) {
                      int age = doc['age'] as int; // Cast 'age' to integer
                      if (age >= 18 && age <= 25) {
                        age18to25Count++;
                      } else if (age >= 26 && age <= 35) {
                        age26to35Count++;
                      } else if (age >= 36 && age <= 60) {
                        age36to60Count++;
                      }else if (age >= 60 && age <= 100) {
                        age60to100Count++;
                      }
                    } else if (doc['age'] is String) {
                      // If 'age' is stored as a String, convert it to an integer
                      int age = int.tryParse(doc['age'] as String) ?? 0;
                      if (age >= 18 && age <= 25) {
                        age18to25Count++;
                      } else if (age >= 26 && age <= 35) {
                        age26to35Count++;
                      } else if (age >= 36 && age <= 60) {
                        age36to60Count++;
                      }else if (age >= 60 && age <= 100) {
                        age60to100Count++;
                      }
                    }
                  }
                  return Column(
                    children: <Widget>[
                      Container(
                        height: 120.0,
                        width: 300.0,
                        color: Colors.blue[600],
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              _party18to25titleText,
                              style: TextStyle(
                                  fontSize: 32.0, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 10.0),
                            // Optional spacing between the texts
                            Text(
                              '$_partyUserCounttitleText : $age18to25Count',
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 120.0,
                        width: 300.0,
                        color: Colors.blue[600],
                        // Container background color
                        padding: const EdgeInsets.all(16.0),
                        // Optional padding
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              _party26to35titleText,
                              style: TextStyle(
                                  fontSize: 32.0, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 10.0),
                            // Optional spacing between the texts
                            Text(
                              '$_partyUserCounttitleText : $age26to35Count',
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 120.0,
                        width: 300.0,
                        color: Colors.blue[600],
                        // Container background color
                        padding: const EdgeInsets.all(16.0),
                        // Optional padding
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              _party36to50titleText,
                              style: TextStyle(
                                  fontSize: 32.0, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 10.0),
                            // Optional spacing between the texts
                            Text(
                              '$_partyUserCounttitleText : $age36to60Count',
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 120.0,
                        width: 300.0,
                        color: Colors.blue[600],
                        // Container background color
                        padding: const EdgeInsets.all(16.0),
                        // Optional padding
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              _party50abovetitleText,
                              style: TextStyle(
                                  fontSize: 32.0, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 10.0),
                            // Optional spacing between the texts
                            Text(
                              '$_partyUserCounttitleText : $age60to100Count',
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}