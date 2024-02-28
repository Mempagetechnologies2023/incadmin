import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BoothFive extends StatefulWidget {
  const BoothFive({super.key});

  @override
  State<BoothFive> createState() => _BoothFiveState();
}

class _BoothFiveState extends State<BoothFive> {
  Locale _selectedLocale = const Locale('en', 'US');

  // Default language
  String _greetingText = 'Hello, World!';

  String _partytitleText = 'बूथ';

  String _partyLeadertitleText = 'नेता';

  String _partyEmailtitleText = 'ईमेल';

  String _partyMobiletitleText = 'मोबाइल नंबर';

  String _partyWhattitleText = 'व्हाट्सप्प';

  void _changeLanguage(Locale newLocale) {
    setState(() {
      _selectedLocale = newLocale;
      _updatePartyTitleText();
      _updateLeaderTitleText();
      _updateEmailTitleText();
      _updateMobileTitleText();
      _updateWhatTitleText();



    });
  }

  void _updatePartyTitleText() {
    switch (_selectedLocale.languageCode) {
      case 'hi':
        _partytitleText = 'बूथ';
        break;
      case 'en':
        _partytitleText = 'Booth';
        break;
      default:
        _partytitleText = 'बूथ';
    }
  }

  void _updateLeaderTitleText() {
    switch (_selectedLocale.languageCode) {
      case 'hi':
        _partyLeadertitleText = 'नेता';
        break;
      case 'en':
        _partyLeadertitleText = 'Leader';
        break;
      default:
        _partyLeadertitleText = 'नेता';
    }
  }

  void _updateEmailTitleText() {
    switch (_selectedLocale.languageCode) {
      case 'hi':
        _partyEmailtitleText = 'ईमेल';
        break;
      case 'en':
        _partyEmailtitleText = 'Email';
        break;
      default:
        _partyEmailtitleText = 'ईमेल';
    }
  }

  void _updateMobileTitleText() {
    switch (_selectedLocale.languageCode) {
      case 'hi':
        _partyMobiletitleText = 'मोबाइल नंबर';
        break;
      case 'en':
        _partyMobiletitleText = 'Mobile Number';
        break;
      default:
        _partyMobiletitleText = 'मोबाइल नंबर';
    }
  }

  void _updateWhatTitleText() {
    switch (_selectedLocale.languageCode) {
      case 'hi':
        _partyWhattitleText = 'व्हाट्सप्प';
        break;
      case 'en':
        _partyWhattitleText = 'Whats App';
        break;
      default:
        _partyWhattitleText = 'व्हाट्सप्प';
    }
  }

  @override
  Widget build(BuildContext context) {
    final Uri phoneNumber = Uri.parse('tel:+8-317-675-943');
    final Uri whatsApp = Uri.parse('https://wa.me/+918317675943');
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: Text("$_partytitleText 5"),
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
        children: <Widget>[
          Container(
            height: 250,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blue, Color.fromARGB(228, 140, 200, 100)],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                stops: [0.5, 0.9],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    InkWell(
                      onTap: () async {
                        final Uri url = Uri(
                          scheme: 'tel',
                          path: "831 767 5943",
                        );
                        if (await canLaunchUrl(url)) {
                          await launchUrl(url);
                        } else {
                          print('cannot launch this Url');
                        }
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.yellow[500],
                        minRadius: 35.0,
                        child: Icon(
                          Icons.call,
                          size: 30.0,
                        ),
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white70,
                      minRadius: 60.0,
                      child: CircleAvatar(
                        radius: 50.0,
                        backgroundImage: NetworkImage(
                            'https://res.cloudinary.com/dsnycawxb/image/upload/v1677433666/samples/people/smiling-man.jpg'),
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        launchUrl(whatsApp);
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.yellow.shade500,
                        minRadius: 35.0,
                        child: Icon(
                          Icons.message,
                          size: 30.0,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  _partyLeadertitleText,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "$_partytitleText $_partyLeadertitleText 5",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text(
                    _partyEmailtitleText,
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    'leader@gmail.com',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                Divider(),
                ListTile(
                  title: Text(
                    _partyMobiletitleText,
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    '9876543210',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                Divider(),
                ListTile(
                  title: Text(
                    _partyWhattitleText,
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    '9876543210',
                    style: TextStyle(
                      fontSize: 18,
                    ),
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
