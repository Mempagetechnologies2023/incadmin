import 'package:flutter/material.dart';
import 'Agewisebooths.dart';
import 'Boothissues.dart';
import 'Districts/Kodangal.dart';
import 'Influencerbooths.dart';
import 'authservice.dart';

class BootList extends StatefulWidget {
   BootList({super.key});

  @override
  State<BootList> createState() => _BootListState();
}

class _BootListState extends State<BootList> {
  Locale _selectedLocale = const Locale('en', 'US');
 // Default language
  String _greetingText = 'Hello, World!';

  String _partytitleText = 'भारतीय राष्ट्रीय कांग्रेस';

  String _partyAdmintitleText = 'व्यवस्थापक पृष्ठ';
  String _partyBoothtitleText = 'बूथ';
  String _partyAgewisetitleText = 'उम्र के हिसाब से';
  String _partyInfluencerstitleText = 'प्रभावकारी व्यक्ति';
  String _partyBoothIssuestitleText = 'बूथ मुद्दे';



  void _changeLanguage(Locale newLocale) {
    setState(() {
      _selectedLocale = newLocale;
      _updatePartyTitleText();

      _updatePartyTitleText();
      _updateAdminTitleText();
      _updateBoothTitleText();
      _updateAgewiseTitleText();
      _updateInfluencersTitleText();
      _updateBoothIssuesTitleText();


    });
  }

  void _updatePartyTitleText() {
    switch (_selectedLocale.languageCode) {
      case 'hi':
        _partytitleText = 'भारतीय राष्ट्रीय कांग्रेस';
        break;
      case 'en':
        _partytitleText = 'Indian National Congress';
        break;
      default:
        _partytitleText = 'भारतीय राष्ट्रीय कांग्रेस';
    }
  }
  void _updateAdminTitleText() {
    switch (_selectedLocale.languageCode) {
      case 'hi':
        _partyAdmintitleText = 'व्यवस्थापक पृष्ठ';
        break;
      case 'en':
        _partyAdmintitleText = 'Admin Page';
        break;
      default:
        _partyAdmintitleText = 'व्यवस्थापक पृष्ठ';
    }
  }

  void _updateBoothTitleText() {
    switch (_selectedLocale.languageCode) {
      case 'hi':
        _partyBoothtitleText = 'बूथ';
        break;
      case 'en':
        _partyBoothtitleText = 'Booths';
        break;
      default:
        _partyBoothtitleText = 'बूथ';
    }
  }

  void _updateAgewiseTitleText() {
    switch (_selectedLocale.languageCode) {
      case 'hi':
        _partyAgewisetitleText = 'उम्र के हिसाब से';
        break;
      case 'en':
        _partyAgewisetitleText = 'Age Wise';
        break;
      default:
        _partyAgewisetitleText = 'उम्र के हिसाब से';
    }
  }

  void _updateInfluencersTitleText() {
    switch (_selectedLocale.languageCode) {
      case 'hi':
        _partyInfluencerstitleText = 'प्रभावकारी व्यक्ति';
        break;
      case 'en':
        _partyInfluencerstitleText = 'Influencers';
        break;
      default:
        _partyInfluencerstitleText = 'प्रभावकारी व्यक्ति';
    }
  }

  void _updateBoothIssuesTitleText() {
    switch (_selectedLocale.languageCode) {
      case 'hi':
        _partyBoothIssuestitleText = 'बूथ मुद्दे';
        break;
      case 'en':
        _partyBoothIssuestitleText = 'Booth Issues';
        break;
      default:
        _partyBoothIssuestitleText = 'बूथ मुद्दे';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        backgroundColor: Colors.blue[300],
        title: Text(_partyAdmintitleText,style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w800,
          fontSize: 20,
        ),),
        actions: [
          IconButton(
            onPressed: () {
              AuthService authService = AuthService();
              authService.logOutUser(context);
            },
            icon: const Icon(Icons.logout,),
            color: Colors.black,
          )
        ],
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
            padding: EdgeInsets.all(25),
            child: Column(
              children: <Widget>[
                Container(
                  height: 100,
                  width: 210,
                  child: MaterialButton(
                    padding: EdgeInsets.all(20),
                    textColor: Colors.black,
                    color: Colors.blue[300],
                    child: Text(_partyBoothtitleText,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800,color: Colors.white),),
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
                    textColor: Colors.black,
                    color: Colors.blue[300],
                    child: Text(_partyAgewisetitleText,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800,color: Colors.white),),
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
                    textColor: Colors.black,
                    color: Colors.blue[300],
                    child: Text(
                      _partyInfluencerstitleText,
                      style:
                          TextStyle(fontWeight: FontWeight.w800, fontSize: 20,color: Colors.white),
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
                    textColor: Colors.black,
                    color: Colors.blue[300],
                    child: Text(
                      _partyBoothIssuestitleText,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w800,color: Colors.white),
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
