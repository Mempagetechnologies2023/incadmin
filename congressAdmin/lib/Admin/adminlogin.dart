import 'package:flutter/material.dart';
import '../Boothlist.dart';

class AdminLoginScreen extends StatefulWidget {
  @override
  _AdminLoginScreenState createState() => _AdminLoginScreenState();
}

class _AdminLoginScreenState extends State<AdminLoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final String adminUsername = 'admin@gmail.com';
  final String adminPassword = '123456789';

  void _signIn() {
    if (_formKey.currentState!.validate()) {
      String enteredUsername = _usernameController.text;
      String enteredPassword = _passwordController.text;

      if (enteredUsername == adminUsername && enteredPassword == adminPassword) {
        // Navigate to the admin dashboard or perform other admin-related actions
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => BootList()));
        print('Admin logged in successfully!');
      } else {
        print('Invalid credentials. Please try again.');
      }
    }
  }

  Locale _selectedLocale = const Locale('en', 'US'); // Default language
  String _greetingText = 'Hello, World!';
  String _partytitleText = 'भारतीय राष्ट्रीय कांग्रेस';

  String _partyUserText = 'उपयोगकर्ता नाम';
  String _partyUserFullText = 'अपने उपयोगकर्ता नाम दर्ज करें';

  String _partyPasswordText = 'पासवर्ड';
  String _partyLoginText = 'लॉग इन करें';


  void _changeLanguage(Locale newLocale) {
    setState(() {
      _selectedLocale = newLocale;
      _updatePartyTitleText();

      _updateUserText();
      _updateUserFullText();

      _updatePasswordText();
      _updateLoginText();


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

  void _updateUserText() {
    switch (_selectedLocale.languageCode) {
      case 'hi':
        _partyUserText = 'उपयोगकर्ता नाम';
        break;
      case 'en':
        _partyUserText = 'User Name';
        break;
      default:
        _partyUserText = 'उपयोगकर्ता नाम';
    }
  }
  void _updateUserFullText() {
    switch (_selectedLocale.languageCode) {
      case 'hi':
        _partyUserFullText = 'अपने उपयोगकर्ता नाम दर्ज करें';
        break;
      case 'en':
        _partyUserFullText = 'Please enter your username';
        break;
      default:
        _partyUserFullText = 'अपने उपयोगकर्ता नाम दर्ज करें';
    }
  }

  void _updatePasswordText() {
    switch (_selectedLocale.languageCode) {
      case 'hi':
        _partyPasswordText = 'पासवर्ड';
        break;
      case 'en':
        _partyPasswordText = 'Password';
        break;
      default:
        _partyPasswordText = 'पासवर्ड';
    }
  }
  void _updateLoginText() {
    switch (_selectedLocale.languageCode) {
      case 'hi':
        _partyLoginText = 'लॉग इन करें';
        break;
      case 'en':
        _partyLoginText = 'Login';
        break;
      default:
        _partyLoginText = 'लॉग इन करें';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: Text(_partytitleText,style: TextStyle(fontWeight: FontWeight.w900,),),
        centerTitle: true,
        backgroundColor: Colors.blue[300],
        actions: [
          Container(
            // width: 125,
            child: Image.asset(
              "assets/images/party_logoone.png",
            ),
          ),
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Card(
            elevation: 8.0,
            color: Colors.blue[300],
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    TextFormField(
                      controller: _usernameController,
                      decoration: InputDecoration(
                        labelText: _partyUserText,
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return _partyUserFullText;
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 16.0),
                    TextFormField(
                      controller: _passwordController,
                      decoration: InputDecoration(
                        labelText: _partyPasswordText,
                      ),
                      obscureText: true,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your password';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 20),
                    MaterialButton(
                      color: Colors.green[900],
                      onPressed: () {
                        _signIn();
                      },
                      child: Text(_partyLoginText,style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.w900),),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

