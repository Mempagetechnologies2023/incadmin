import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class BoothFiveIssues extends StatefulWidget {
  const BoothFiveIssues({super.key});

  @override
  State<BoothFiveIssues> createState() => _BoothFiveIssuesState();
}

class _BoothFiveIssuesState extends State<BoothFiveIssues> {


  final CollectionReference _reference = FirebaseFirestore.instance.collection('booth5');

  Locale _selectedLocale = const Locale('en', 'US');

  String _partytitleText = 'अमेठी में प्रभावशाली व्यक्तियों का विवरण';

  String _partyBoothtitleText = 'बूट मुद्दे';

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
        _partytitleText = 'अमेठी में प्रभावशाली व्यक्तियों का विवरण';
        break;
      case 'en':
        _partytitleText = 'Influencers Details in Amethi';
        break;
      default:
        _partytitleText = 'अमेठी में प्रभावशाली व्यक्तियों का विवरण';
    }
  }

  void _updateBoothTitleText() {
    switch (_selectedLocale.languageCode) {
      case 'hi':
        _partyBoothtitleText = 'बूट मुद्दे';
        break;
      case 'en':
        _partyBoothtitleText = 'Booth Issuess';
        break;
      default:
        _partyBoothtitleText = 'बूट मुद्दे';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title:  Text("$_partyBoothtitleText 5",style: TextStyle(
            fontWeight: FontWeight.w800, fontSize: 20, color: Colors.black),),
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

          StreamBuilder<QuerySnapshot>(
            stream: _reference.snapshots(),
            builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return CircularProgressIndicator();
              }
              if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}');
              }

              List<String> areaIssuesList = [];
              for (var doc in snapshot.data!.docs) {
                String areaIssues = doc['areaIssues'];
                if (areaIssues.isNotEmpty) {
                  areaIssuesList.add(areaIssues);
                }
              }

              return Column(
                children: List.generate(areaIssuesList.length, (index) {
                  String areaIssues = areaIssuesList[index];
                  int issueNumber = index + 1; // Generate issue number (starts from 1)
                  return Container(
                    width: 400,
                    margin: const EdgeInsets.all(8.0),
                    padding: const EdgeInsets.all(12.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 3,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Issue #$issueNumber', // Display issue number
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          areaIssues,
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ],
                    ),
                  );
                }),
              );
            },
          ),

        ],
      ),
    );
  }
}