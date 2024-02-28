import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:quickalert/quickalert.dart';

class TransferDataBooth10 extends StatefulWidget {
  const TransferDataBooth10({super.key});

  @override
  State<TransferDataBooth10> createState() => _TransferDataBooth10State();
}

class _TransferDataBooth10State extends State<TransferDataBooth10> {
  final CollectionReference _reference =
  FirebaseFirestore.instance.collection('booth10');

  final firstnameController = TextEditingController();
  final lastnameController = TextEditingController();
  final ageController = TextEditingController();
  final villageController = TextEditingController();
  final districtController = TextEditingController();
  final mandalController = TextEditingController();
  //final bootnumberController = TextEditingController();
  final leaderOneController = TextEditingController();
  final leaderTwoController = TextEditingController();
  final leaderThreeController = TextEditingController();
  final areaissuesController = TextEditingController();

  void showAlert() {
    QuickAlert.show(
        context: context,
        type: QuickAlertType.success,
        text: "Your Request Submitted ");
  }

  final formKey = GlobalKey<FormState>();

  Locale _selectedLocale = const Locale('en', 'US');

  String _partytitleText = 'अमेठी में बूथ';

  String _partyBoothtitleText = 'बूथ';

  String _partyUsertitleText = 'उपयोगकर्ता जानकारी';

  String _partyFirstNametitleText = 'पहला नाम';
  String _partyLastNametitleText = 'आखिरी नाम';
  String _partyAgetitleText = 'आयु';
  String _partyDistricttitleText = 'ज़िला';
  String _partyVillagetitleText = 'गाँव';
  String _partyMandaltitleText = 'मंडल';
  String _partyLeader1titleText = 'नेता 1';
  String _partyLeader2titleText = 'नेता 2';
  String _partyLeader3titleText = 'नेता 3';
  String _partyAreaIssuestitleText = 'क्षेत्र के मुद्दे';
  String _partySubmittitleText = 'फार्म जमा करें';
  String _partyFilltitleText = 'प्रपत्र भरिए';
  String _partyInfluencerstitleText = 'प्रभावकारी व्यक्ति';


  void _changeLanguage(Locale newLocale) {
    setState(() {
      _selectedLocale = newLocale;
      _updatePartyTitleText();

      _updateBoothTitleText();
      _updateUserTitleText();
      _updateFirstNameTitleText();
      _updateLastNameTitleText();
      _updateAgeTitleText();
      _updateDistrictTitleText();
      _updateVillageTitleText();
      _updateMandalTitleText();
      _updateLeader1TitleText();
      _updateLeader2TitleText();
      _updateLeader3TitleText();
      _updateAreaIssuesTitleText();
      _updateSubmitTitleText();
      _updateFillTitleText();
      _updateInfluencersTitleText();

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

  void _updateUserTitleText() {
    switch (_selectedLocale.languageCode) {
      case 'hi':
        _partyUsertitleText = 'उपयोगकर्ता जानकारी';
        break;
      case 'en':
        _partyUsertitleText = 'User Info';
        break;
      default:
        _partyUsertitleText = 'उपयोगकर्ता जानकारी';
    }
  }

  void _updateFirstNameTitleText() {
    switch (_selectedLocale.languageCode) {
      case 'hi':
        _partyFirstNametitleText = 'पहला नाम';
        break;
      case 'en':
        _partyFirstNametitleText = 'First Name';
        break;
      default:
        _partyFirstNametitleText = 'पहला नाम';
    }
  }
  void _updateLastNameTitleText() {
    switch (_selectedLocale.languageCode) {
      case 'hi':
        _partyLastNametitleText = 'आखिरी नाम';
        break;
      case 'en':
        _partyLastNametitleText = 'Last Name';
        break;
      default:
        _partyLastNametitleText = 'आखिरी नाम';
    }
  }
  void _updateAgeTitleText() {
    switch (_selectedLocale.languageCode) {
      case 'hi':
        _partyAgetitleText = 'आयु';
        break;
      case 'en':
        _partyAgetitleText = 'Age';
        break;
      default:
        _partyAgetitleText = 'आयु';
    }
  }
  void _updateDistrictTitleText() {
    switch (_selectedLocale.languageCode) {
      case 'hi':
        _partyDistricttitleText = 'ज़िला';
        break;
      case 'en':
        _partyDistricttitleText = 'District';
        break;
      default:
        _partyDistricttitleText = 'ज़िला';
    }
  }
  void _updateVillageTitleText() {
    switch (_selectedLocale.languageCode) {
      case 'hi':
        _partyVillagetitleText = 'गाँव';
        break;
      case 'en':
        _partyVillagetitleText = 'Village';
        break;
      default:
        _partyVillagetitleText = 'गाँव';
    }
  }
  void _updateMandalTitleText() {
    switch (_selectedLocale.languageCode) {
      case 'hi':
        _partyMandaltitleText = 'मंडल';
        break;
      case 'en':
        _partyMandaltitleText = 'Mandal';
        break;
      default:
        _partyMandaltitleText = 'मंडल';
    }
  }
  void _updateLeader1TitleText() {
    switch (_selectedLocale.languageCode) {
      case 'hi':
        _partyLeader1titleText = 'नेता 1';
        break;
      case 'en':
        _partyLeader1titleText = 'Leader 1';
        break;
      default:
        _partyLeader1titleText = 'नेता 1';
    }
  }
  void _updateLeader2TitleText() {
    switch (_selectedLocale.languageCode) {
      case 'hi':
        _partyLeader2titleText = 'नेता 2';
        break;
      case 'en':
        _partyLeader2titleText = 'Leader 2';
        break;
      default:
        _partyLeader2titleText = 'नेता 2';
    }
  }
  void _updateLeader3TitleText() {
    switch (_selectedLocale.languageCode) {
      case 'hi':
        _partyLeader3titleText = 'नेता 3';
        break;
      case 'en':
        _partyLeader3titleText = 'Leader 3';
        break;
      default:
        _partyLeader3titleText = 'नेता 3';
    }
  }
  void _updateAreaIssuesTitleText() {
    switch (_selectedLocale.languageCode) {
      case 'hi':
        _partyAreaIssuestitleText = 'क्षेत्र के मुद्दे';
        break;
      case 'en':
        _partyAreaIssuestitleText = 'Area Issues';
        break;
      default:
        _partyAreaIssuestitleText = 'क्षेत्र के मुद्दे';
    }
  }
  void _updateSubmitTitleText() {
    switch (_selectedLocale.languageCode) {
      case 'hi':
        _partySubmittitleText = 'फार्म जमा करें';
        break;
      case 'en':
        _partySubmittitleText = 'Submit Form';
        break;
      default:
        _partySubmittitleText = 'फार्म जमा करें';
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
  void _updateFillTitleText() {
    switch (_selectedLocale.languageCode) {
      case 'hi':
        _partyFilltitleText = 'प्रपत्र भरिए';
        break;
      case 'en':
        _partyFilltitleText = 'Fill The Form';
        break;
      default:
        _partyFilltitleText = 'प्रपत्र भरिए';
    }
  }




  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        backgroundColor: Colors.blue[300],
        title:  Text(_partyUsertitleText),
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
          Stack(
            children: [
              Form(
                key: formKey,
                child: Stack(
                  children: [
                    Container(
                      width: size.width * 1.0,
                      height: size.height * 2,
                    ),
                    Positioned(
                      top: size.height * 0.01,
                      left: size.width * 0.30,
                      child:  Text(
                        _partyFilltitleText,
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.w900),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Positioned(
                      height: size.height * 0.10,
                      width: MediaQuery.of(context).size.width * 0.8,
                      top: size.height * 0.09,
                      left: size.width * 0.04,
                      child: Text(
                        "$_partyBoothtitleText 10",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w900),
                      ),
                    ),
                    Positioned(
                      height: size.height * 0.1,
                      width: size.width * 0.45,
                      top: size.height * 0.15,
                      left: size.width * 0.01,
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Firstname is Empty';
                          } else {
                            return null;
                          }
                        },
                        controller: firstnameController,
                        keyboardType: TextInputType.text,
                        decoration:  InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                            ),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(),
                          hintText: _partyFirstNametitleText,
                        ),
                      ),
                    ),
                    Positioned(
                      height: size.height * 0.1,
                      width: size.width * 0.45,
                      top: size.height * 0.15,
                      left: size.width * 0.50,
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Lastname is Empty';
                          } else {
                            return null;
                          }
                        },
                        controller: lastnameController,
                        keyboardType: TextInputType.text,
                        decoration:  InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                            ),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(),
                          hintText: _partyLastNametitleText,
                        ),
                      ),
                    ),
                    Positioned(
                      height: size.height * 0.1,
                      width: size.width * 0.45,
                      top: size.height * 0.22,
                      left: size.width * 0.01,
                      child: TextFormField(
                        validator: (value) {
                          if (ageController.text.length != 2) {
                            return 'Age is Empty';
                          } else {
                            return null;
                          }
                        },
                        controller: ageController,
                        keyboardType: TextInputType.number,
                        decoration:  InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                            ),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(),
                          hintText: _partyAgetitleText,
                        ),
                      ),
                    ),
                    Positioned(
                      height: size.height * 0.1,
                      width: size.width * 0.45,
                      top: size.height * 0.29,
                      left: size.width * 0.01,
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Village is Empty';
                          } else {
                            return null;
                          }
                        },
                        controller: villageController,
                        keyboardType: TextInputType.text,
                        decoration:  InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                            ),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(),
                          hintText: _partyVillagetitleText,
                        ),
                      ),
                    ),
                    Positioned(
                      height: size.height * 0.1,
                      width: size.width * 0.45,
                      top: size.height * 0.22,
                      left: size.width * 0.50,
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'District is Empty';
                          } else {
                            return null;
                          }
                        },
                        controller: districtController,
                        keyboardType: TextInputType.text,
                        decoration:  InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                            ),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(),
                          hintText: _partyDistricttitleText,
                        ),
                      ),
                    ),
                    Positioned(
                      height: size.height * 0.1,
                      width: size.width * 0.45,
                      top: size.height * 0.29,
                      left: size.width * 0.50,
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Mandal is Empty';
                          } else {
                            return null;
                          }
                        },
                        controller: mandalController,
                        keyboardType: TextInputType.text,
                        decoration:  InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                            ),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(),
                          hintText: _partyMandaltitleText,
                        ),
                      ),
                    ),
                    Positioned(
                      height: size.height * 0.1,
                      width: size.width * 0.45,
                      top: size.height * 0.39,
                      left: size.width * 0.01,
                      child: Text(
                        "$_partyInfluencerstitleText",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w900),
                      ),
                    ),
                    Positioned(
                      height: size.height * 0.6,
                      width: MediaQuery.of(context).size.width * 0.8,
                      top: size.height * 0.44,
                      left: size.width * 0.01,
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Leader-1 is Empty';
                          } else {
                            return null;
                          }
                        },
                        controller: leaderOneController,
                        keyboardType: TextInputType.text,
                        decoration:  InputDecoration(
                          contentPadding: EdgeInsets.all(30.0),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                            ),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(),
                          hintText: _partyLeader1titleText,
                        ),
                      ),
                    ),
                    Positioned(
                      height: size.height * 0.6,
                      width: MediaQuery.of(context).size.width * 0.8,
                      top: size.height * 0.54,
                      left: size.width * 0.01,
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Leader-2 is Empty';
                          } else {
                            return null;
                          }
                        },
                        controller: leaderTwoController,
                        keyboardType: TextInputType.text,
                        decoration:  InputDecoration(
                          contentPadding: EdgeInsets.all(30.0),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                            ),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(),
                          hintText: _partyLeader2titleText,
                        ),
                      ),
                    ),
                    Positioned(
                      height: size.height * 0.6,
                      width: MediaQuery.of(context).size.width * 0.8,
                      top: size.height * 0.64,
                      left: size.width * 0.01,
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Leader-3 is Empty';
                          } else {
                            return null;
                          }
                        },
                        controller: leaderThreeController,
                        keyboardType: TextInputType.text,
                        decoration:  InputDecoration(
                          contentPadding: EdgeInsets.all(30.0),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                            ),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(),
                          hintText: _partyLeader3titleText,
                        ),
                      ),
                    ),
                    Positioned(
                      height: size.height * 0.8,
                      width: MediaQuery.of(context).size.width * 0.8,
                      top: size.height * 0.74,
                      left: size.width * 0.01,
                      child: TextFormField(
                        maxLines: 10,
                        minLines: 1,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'AreaIssues is Empty';
                          } else {
                            return null;
                          }
                        },
                        controller: areaissuesController,
                        keyboardType: TextInputType.multiline,
                        decoration:  InputDecoration(
                          contentPadding: EdgeInsets.all(30.0),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                            ),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(),
                          hintText: _partyAreaIssuestitleText,
                        ),
                      ),
                    ),
                    Positioned(
                      height: size.height * 0.07,
                      width: size.width * 0.5,
                      top: size.height * 0.84,
                      left: size.width * 0.25,
                      child: MaterialButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        elevation: 10,
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            int age = int.parse(ageController.text);
                            Map<String, dynamic> students = {
                              'firstname': firstnameController.text,
                              'lastname': lastnameController.text,
                              'age': age, // Store age as a string in Firestore
                              'mandal': mandalController.text,
                              'village': villageController.text,
                              'district': districtController.text,
                              // 'caste' : userCasteController.text,
                              //'boothNumber': int.parse(bootnumberController.text), // Store boothNumber as int
                              'leaderOne': leaderOneController.text,
                              'leaderTwo': leaderTwoController.text,
                              'leaderThree':
                              leaderThreeController.text,
                              'areaIssues': areaissuesController.text,
                            };
                            firstnameController.clear();
                            lastnameController.clear();
                            ageController.clear();
                            mandalController.clear();
                            villageController.clear();
                            districtController.clear();
                            //userCasteController.clear();
                            //bootnumberController.clear();
                            leaderOneController.clear();
                            leaderTwoController.clear();
                            leaderThreeController.clear();
                            areaissuesController.clear();

                            _reference.add(students);

                            showAlert();
                            //Navigator.push(context, MaterialPageRoute(builder: (context) => const UserForm() ));
                          }
                        },
                        color: Colors.white,
                        textColor: Colors.white,
                        child: Text(
                          _partySubmittitleText,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: MediaQuery.of(context).size.height * 0.04,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

//
// _reference.add(students);
//
// showAlert();
