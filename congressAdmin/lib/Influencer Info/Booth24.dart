import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Booth24Info extends StatefulWidget {
  const Booth24Info({super.key});

  @override
  State<Booth24Info> createState() => _Booth24InfoState();
}

class _Booth24InfoState extends State<Booth24Info> {
  final CollectionReference _reference =
  FirebaseFirestore.instance.collection('booth24');

  Locale _selectedLocale = const Locale('en', 'US');

  String _partytitleText = 'प्रभावशाली व्यक्तियों की जानकारी';

  String _partyBoothtitleText = 'बूथ';
  String _partySnotitleText = 'क्र.सं';
  String _partyNametitleText = 'नाम';
  String _partyCounttitleText = 'गिनती करना';

  void _changeLanguage(Locale newLocale) {
    setState(() {
      _selectedLocale = newLocale;
      _updatePartyTitleText();

      _updateBoothTitleText();
      _updateCountTitleText();
      _updateNameTitleText();
      _updateSnoTitleText();

    });
  }

  void _updatePartyTitleText() {
    switch (_selectedLocale.languageCode) {
      case 'hi':
        _partytitleText = 'प्रभावशाली व्यक्तियों की जानकारी';
        break;
      case 'en':
        _partytitleText = 'Influencers Info';
        break;
      default:
        _partytitleText = 'प्रभावशाली व्यक्तियों की जानकारी';
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
  void _updateSnoTitleText() {
    switch (_selectedLocale.languageCode) {
      case 'hi':
        _partySnotitleText = 'क्र.सं';
        break;
      case 'en':
        _partySnotitleText = 'S.No';
        break;
      default:
        _partySnotitleText = 'क्र.सं';
    }
  }
  void _updateNameTitleText() {
    switch (_selectedLocale.languageCode) {
      case 'hi':
        _partyNametitleText = 'नाम';
        break;
      case 'en':
        _partyNametitleText = 'Name';
        break;
      default:
        _partyNametitleText = 'नाम';
    }
  }
  void _updateCountTitleText() {
    switch (_selectedLocale.languageCode) {
      case 'hi':
        _partyCounttitleText = 'गिनती करना';
        break;
      case 'en':
        _partyCounttitleText = 'Count';
        break;
      default:
        _partyCounttitleText = 'गिनती करना';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        backgroundColor: Colors.blue[300],
        title:  Text(
          "$_partytitleText $_partyBoothtitleText 24",
          style: TextStyle(
              fontWeight: FontWeight.w800, fontSize: 20, color: Colors.black),
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
      body: ListView(
        children: [
          Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              StreamBuilder<QuerySnapshot>(
                stream: _reference.snapshots(),
                builder: (BuildContext context,
                    AsyncSnapshot<QuerySnapshot> snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return CircularProgressIndicator();
                  }
                  if (snapshot.hasError) {
                    return Text('Error: ${snapshot.error}');
                  }

                  List<String> influencerSelections = [];
                  for (var doc in snapshot.data!.docs) {
                    influencerSelections.add(doc['leaderOne']);
                    influencerSelections.add(doc['leaderTwo']);
                    influencerSelections.add(doc['leaderThree']);
                  }

                  Map<String, int> influencerCount = {};
                  for (var selection in influencerSelections) {
                    if (selection.isNotEmpty) {
                      influencerCount[selection] =
                          (influencerCount[selection] ?? 0) + 1;
                    }
                  }

                  List<MapEntry<String, int>> sortedInfluencers =
                  influencerCount.entries.toList()
                    ..sort((a, b) => b.value.compareTo(a.value));

                  // Create rows for the DataTable
                  List<DataRow> rows = [];
                  for (var i = 0; i < sortedInfluencers.length; i++) {
                    rows.add(
                      DataRow(
                        cells: [
                          DataCell(Text('${i + 1}')),
                          // S.NO
                          DataCell(Text(sortedInfluencers[i].key)),
                          // Name
                          DataCell(Text('${sortedInfluencers[i].value}')),
                          // Count
                        ],
                      ),
                    );
                  }

                  // Create the DataTable
                  DataTable table = DataTable(
                    columns:  [
                      DataColumn(label: Text(_partySnotitleText)),
                      DataColumn(label: Text(_partyNametitleText)),
                      DataColumn(label: Text(_partyCounttitleText)),
                    ],
                    rows: rows,
                  );

                  return SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      color: Colors.blue[600],
                      child: SingleChildScrollView(
                        child: table,
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ],
      ),
    );
  }
}