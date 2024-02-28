import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../Sub Screens/constituencyoverview.dart';
import '../Sub Screens/partleader.dart';
import '../Sub Screens/userform.dart';
import '../Sub Screens/youtudelinks.dart';


//
final Uri _urlINCContitution = Uri.parse('https://inc.in/inc-constitution');

final Uri _urlBriefhistory = Uri.parse('https://inc.in/brief-history-of-congress');

final Uri _urlOurvalues = Uri.parse('https://inc.in/our-values');

final Uri _urlOurinspirations = Uri.parse('https://inc.in/our-inspiration');

final Uri _urlOurachivements = Uri.parse('https://inc.in/our-achievements');

final Uri _urlOurpolicies = Uri.parse('https://inc.in/our-policies');

final Uri _urlAicc = Uri.parse('https://inc.in/aicc-office-bearers');

final Uri _urlCwc = Uri.parse('https://inc.in/congress-working-committee');

final Uri _urlCenterElectionAuth = Uri.parse('https://inc.in/central-election-authority');

final Uri _urlCenterElectionCommi = Uri.parse('https://inc.in/central-election-committee');

final Uri _urlAiccdepts = Uri.parse('https://inc.in/aicc-depts-cells');

final Uri _urlInfocus = Uri.parse('https://inc.in/in-focus');

final Uri _urlCongresssandesh = Uri.parse('https://inc.in/congress-sandesh');

final Uri _urlNationalserald = Uri.parse('https://www.nationalheraldindia.com/');

final Uri _urlAbillion = Uri.parse('https://inc.in/a-billion-and-one-voices');

final Uri _urlFactChecks = Uri.parse('https://inc.in/fact-check');

final Uri _urlWork = Uri.parse('https://inc.in/work-for-us');

final Uri _urlVolunteer = Uri.parse('https://inc.in/join-the-party/volunteer');

final Uri _urlLocate = Uri.parse('https://inc.in/locate-office');

final Uri _urlCongress = Uri.parse('https://inc.in/congress-seva-dal');

final Uri _urlIndianyouth = Uri.parse('https://inc.in/indian-youth-congress');

final Uri _urlAllIndia = Uri.parse('https://inc.in/all-india-mahila-congress');

final Uri _urlIntuc = Uri.parse('https://inc.in/intuc');

final Uri _urlNsui = Uri.parse('https://inc.in/nsui');

class PollingStatus extends StatefulWidget {
  const PollingStatus({super.key});

  @override
  State<PollingStatus> createState() => _PollingStatusState();
}

class _PollingStatusState extends State<PollingStatus> {


  Locale _selectedLocale = const Locale('en', 'US'); // Default language
  String _greetingText = 'Hello, World!';
  String _partytitleText = 'भारतीय राष्ट्रीय कांग्रेस';

  //Drawer
  String _partyaboutText = 'हमारे बारे में';
  String _partydrawerIncText = 'कांग्रेस संविधान';
  String _partydrawerhistoryText = 'कांग्रेस का संक्षिप्त इतिहास';
  String _partydrawerOurvalueText = 'हमारे आदर्श';
  String _partydrawerOurInspirationText = 'हमारी प्रेरणाश';
  String _partydrawerOurAchivementsText = 'हमारी उपलब्धियाँ';
  String _partydrawerOurPoliciesText = 'हमारी नीतियां';

  //AICC
  String _partyaiccText = 'अखिल भारतीय कांग्रेस कमेटी';
  String _partydrawerAICCOfficeBearersText = 'एआईसीसी पदाधिकारी';
  String _partydrawerCWCText = 'सीडब्ल्यूसी';
  String _partydrawerCentralElectionAuthorityText = 'केंद्रीय चुनाव प्राधिकरण';
  String _partydrawerCentralElectionCommitteeText = 'केंद्रीय चुनाव समिति';
  String _partydrawerAICCDeptsCellsText = 'एआईसीसी विभाग एवं प्रकोष्ठ';

  //Voice of the Nation
  String _partyVoiceoftheNationText = 'राष्ट्र की आवाज';
  String _partydrawerInFocusText = 'फोकस में';
  String _partydrawerCongressSandeshText = 'कांग्रेस सन्देश';
  String _partydrawerNationalHeraldText = 'नेशनल हेराल्ड';
  String _partydrawerABillionOneVoicesText = 'एक अरब और एक आवाज';
  String _partydrawerFactChecksText = 'तथ्य जांच';

  //Frontal Organizations
  String _partydrawerFrontalOrganizationsText = 'फ्रंटल संगठन';
  String _partydrawerCongressSevadalText = 'कांग्रेस सेवा दल';
  String _partydrawerIndianYouthCongressText = 'भारतीय युवा कांग्रेस';
  String _partydrawerAllIndiaMahilaCongressText = 'अखिल भारतीय महिला कांग्रेस';
  String _partydrawerINTUCText = 'आई एन टी यू सी';
  String _partydrawerNSUIText = 'एन एस यू आई';

  //Join The Movement
  String _partydrawerJoinTheMovementText = 'आंदोलन में शामिल हों';
  String _partydrawerWorkForUsText = 'हमारे लिए काम करें';
  String _partydrawervolunteerText = 'स्वयंसेवक';
  String _partydrawerLocateOfficeText = 'कार्यालय का पता लगाएँ';

  //
  String _partyKnowText = 'अपने विधायक/सांसद को जानें';
  String _partyPollText = 'मतदान प्रबंधन';
  String _partyConstituencyText = 'निर्वाचन क्षेत्र का अवलोकन';

  void _changeLanguage(Locale newLocale) {
    setState(() {
      _selectedLocale = newLocale;
      _updateGreetingText();
      _updatePartyTitleText();

      //Drawer
      _updateDraweraboutText();
      _updateDrawerINCText();
      _updateDrawerHistoryText();
      _updateDrawerOurvalueText();
      _updateDrawerOurInspirationText();
      _updateDrawerOurAchivementsText();
      _updateDrawerOurPoliciesText();

      //AICC
      _updateDraweraiccText();
      _updateDrawerAICCOfficeBearersText();
      _updateDrawerCWCText();
      _updateDrawerCentralElectionAuthorityText();
      _updateDrawerCentralElectionCommitteeText();
      _updateDrawerAICCDeptsCellsText();

      //Voice Of the Nation
      _updateDrawerVoiceoftheNationText();
      _updateDrawerInFocusText();
      _updateDrawerCongressSandeshText();
      _updateDrawerNationalHeraldText();
      _updateDrawerABillionOneVoicesText();
      _updateDrawerFactChecksText();

      //Frontal Organizations
      _updateDrawerFronatlOrganizationsText();
      _updateDrawerCongressSevadalText();
      _updateDrawerIndianYouthCongressText();
      _updateDrawerAllIndiaMahilaCongressText();
      _updateDrawerINTUCText();
      _updateDrawerNSUIText();

      //Join The Movement
      _updateDrawerJoinTheMovementText();
      _updateDrawerWorkForUsText();
      _updateDrawerVolunteerText();
      _updateDrawerLocateOfficeText();


      //
      _updateKnowText();
      _updatePollText();
      _updateConstituencyText();



    });
  }

  void _updatePartyTitleText() {
    switch (_selectedLocale.languageCode) {
      case 'en':
        _greetingText = 'Hello, World!';
        break;
      case 'te':
        _greetingText = 'శుభోదయం';
        break;
      default:
        _greetingText = 'Hello, World!';
    }
  }
  //Party Title
  void _updateGreetingText() {
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

  //Drawer
  //About Section
  void _updateDraweraboutText() {
    switch (_selectedLocale.languageCode) {
      case 'hi':
        _partyaboutText = 'हमारे बारे में';
        break;
      case 'en':
        _partyaboutText = 'About';
        break;
      default:
        _partyaboutText = 'हमारे बारे में';
    }
  }

  void _updateDrawerINCText() {
    switch (_selectedLocale.languageCode) {
      case 'hi':
        _partydrawerIncText = 'कांग्रेस संविधान';
        break;
      case 'en':
        _partydrawerIncText = 'INC Constitution';
        break;
      default:
        _partydrawerIncText = 'कांग्रेस संविधान';
    }
  }

  void _updateDrawerHistoryText() {
    switch (_selectedLocale.languageCode) {
      case 'hi':
        _partydrawerhistoryText = 'ककांग्रेस का संक्षिप्त इतिहास';
        break;
      case 'en':
        _partydrawerhistoryText = 'Brief history of Congress';
        break;
      default:
        _partydrawerhistoryText = 'कांग्रेस का संक्षिप्त इतिहास';
    }
  }

  void _updateDrawerOurvalueText() {
    switch (_selectedLocale.languageCode) {
      case 'hi':
        _partydrawerOurvalueText = 'हमारे आदर्श';
        break;
      case 'en':
        _partydrawerOurvalueText = 'Our Values';
        break;
      default:
        _partydrawerOurvalueText = 'कहमारे आदर्श';
    }
  }

  void _updateDrawerOurInspirationText() {
    switch (_selectedLocale.languageCode) {
      case 'hi':
        _partydrawerOurInspirationText = 'हमारी प्रेरणा';
        break;
      case 'en':
        _partydrawerOurInspirationText = 'Our Inspiration';
        break;
      default:
        _partydrawerOurInspirationText = 'हमारी प्रेरणा';
    }
  }

  void _updateDrawerOurAchivementsText() {
    switch (_selectedLocale.languageCode) {
      case 'hi':
        _partydrawerOurAchivementsText = 'हमारी उपलब्धियाँ';
        break;
      case 'en':
        _partydrawerOurAchivementsText = 'Our Achievements';
        break;
      default:
        _partydrawerOurAchivementsText = 'हमारी उपलब्धियाँ';
    }
  }

  void _updateDrawerOurPoliciesText() {
    switch (_selectedLocale.languageCode) {
      case 'hi':
        _partydrawerOurPoliciesText = 'हमारी नीतियां';
        break;
      case 'en':
        _partydrawerOurPoliciesText = 'Our Policies';
        break;
      default:
        _partydrawerOurPoliciesText = 'हमारी नीतियां';
    }
  }

  //AICC Section
  void _updateDraweraiccText() {
    switch (_selectedLocale.languageCode) {
      case 'hi':
        _partyaiccText = 'अखिल भारतीय कांग्रेस कमेटी';
        break;
      case 'en':
        _partyaiccText = 'AICC';
        break;
      default:
        _partyaiccText = 'अखिल भारतीय कांग्रेस कमेटी';
    }
  }

  void _updateDrawerAICCOfficeBearersText() {
    switch (_selectedLocale.languageCode) {
      case 'hi':
        _partydrawerAICCOfficeBearersText = 'एआईसीसी पदाधिकारी';
        break;
      case 'en':
        _partydrawerAICCOfficeBearersText = 'AICC Office Bearers';
        break;
      default:
        _partydrawerAICCOfficeBearersText = 'एआईसीसी पदाधिकारी';
    }
  }

  void _updateDrawerCWCText() {
    switch (_selectedLocale.languageCode) {
      case 'hi':
        _partydrawerCWCText = 'सीडब्ल्यूसी';
        break;
      case 'en':
        _partydrawerCWCText = 'CWC';
        break;
      default:
        _partydrawerCWCText = 'सीडब्ल्यूसी';
    }
  }

  void _updateDrawerCentralElectionAuthorityText() {
    switch (_selectedLocale.languageCode) {
      case 'hi':
        _partydrawerCentralElectionAuthorityText = 'केंद्रीय चुनाव प्राधिकरण';
        break;
      case 'en':
        _partydrawerCentralElectionAuthorityText = 'Central Election Authority';
        break;
      default:
        _partydrawerCentralElectionAuthorityText = 'केंद्रीय चुनाव प्राधिकरण';
    }
  }

  void _updateDrawerCentralElectionCommitteeText() {
    switch (_selectedLocale.languageCode) {
      case 'hi':
        _partydrawerCentralElectionCommitteeText = 'केंद्रीय चुनाव समिति';
        break;
      case 'en':
        _partydrawerCentralElectionCommitteeText = 'Central Election Committee';
        break;
      default:
        _partydrawerCentralElectionCommitteeText = 'केंद्रीय चुनाव समिति';
    }
  }

  void _updateDrawerAICCDeptsCellsText() {
    switch (_selectedLocale.languageCode) {
      case 'hi':
        _partydrawerAICCDeptsCellsText = 'एआईसीसी विभाग एवं प्रकोष्ठ';
        break;
      case 'en':
        _partydrawerAICCDeptsCellsText = 'AICC Depts & Cells';
        break;
      default:
        _partydrawerAICCDeptsCellsText = 'एआईसीसी विभाग एवं प्रकोष्ठ';
    }
  }

  //Frontal Organization
  void _updateDrawerFronatlOrganizationsText() {
    switch (_selectedLocale.languageCode) {
      case 'hi':
        _partydrawerFrontalOrganizationsText = 'फ्रंटल संगठन';
        break;
      case 'en':
        _partydrawerFrontalOrganizationsText = 'Frontal Organizations ';
        break;
      default:
        _partydrawerFrontalOrganizationsText = 'फ्रंटल संगठन';
    }
  }

  void _updateDrawerCongressSevadalText() {
    switch (_selectedLocale.languageCode) {
      case 'hi':
        _partydrawerCongressSevadalText = 'कांग्रेस सेवा दल';
        break;
      case 'en':
        _partydrawerCongressSevadalText = 'Congress Seva dal';
        break;
      default:
        _partydrawerCongressSevadalText = 'कांग्रेस सेवा दल';
    }
  }

  void _updateDrawerIndianYouthCongressText() {
    switch (_selectedLocale.languageCode) {
      case 'hi':
        _partydrawerIndianYouthCongressText = 'भारतीय युवा कांग्रेस';
        break;
      case 'en':
        _partydrawerIndianYouthCongressText = 'Indian Youth Congress';
        break;
      default:
        _partydrawerIndianYouthCongressText = 'भारतीय युवा कांग्रेस';
    }
  }

  void _updateDrawerAllIndiaMahilaCongressText() {
    switch (_selectedLocale.languageCode) {
      case 'hi':
        _partydrawerAllIndiaMahilaCongressText = 'अखिल भारतीय महिला कांग्रेस';
        break;
      case 'en':
        _partydrawerAllIndiaMahilaCongressText = 'All India Mahila Congress';
        break;
      default:
        _partydrawerAllIndiaMahilaCongressText = 'नअखिल भारतीय महिला कांग्रेस';
    }
  }

  void _updateDrawerINTUCText() {
    switch (_selectedLocale.languageCode) {
      case 'hi':
        _partydrawerINTUCText = 'आई एन टी यू सी';
        break;
      case 'en':
        _partydrawerINTUCText = 'INTUC';
        break;
      default:
        _partydrawerINTUCText = 'आई एन टी यू सी';
    }
  }

  void _updateDrawerNSUIText() {
    switch (_selectedLocale.languageCode) {
      case 'hi':
        _partydrawerNSUIText = 'एन एस यू आई';
        break;
      case 'en':
        _partydrawerNSUIText = 'N S U I';
        break;
      default:
        _partydrawerNSUIText = 'एन एस यू आई';
    }
  }

  //Voice of the Nation
  void _updateDrawerVoiceoftheNationText() {
    switch (_selectedLocale.languageCode) {
      case 'hi':
        _partyVoiceoftheNationText = 'राष्ट्र की आवाज';
        break;
      case 'en':
        _partyVoiceoftheNationText = 'Voice of the Nation';
        break;
      default:
        _partyVoiceoftheNationText = 'राष्ट्र की आवाज';
    }
  }

  void _updateDrawerInFocusText() {
    switch (_selectedLocale.languageCode) {
      case 'hi':
        _partydrawerInFocusText = 'फोकस में';
        break;
      case 'en':
        _partydrawerInFocusText = 'In Focus';
        break;
      default:
        _partydrawerInFocusText = 'फोकस में';
    }
  }

  void _updateDrawerCongressSandeshText() {
    switch (_selectedLocale.languageCode) {
      case 'hi':
        _partydrawerCongressSandeshText = 'कांग्रेस सन्देश';
        break;
      case 'en':
        _partydrawerCongressSandeshText = 'Congress Sandesh';
        break;
      default:
        _partydrawerCongressSandeshText = 'कांग्रेस सन्देश';
    }
  }

  void _updateDrawerNationalHeraldText() {
    switch (_selectedLocale.languageCode) {
      case 'hi':
        _partydrawerNationalHeraldText = 'नेशनल हेराल्ड';
        break;
      case 'en':
        _partydrawerNationalHeraldText = 'National Herald';
        break;
      default:
        _partydrawerNationalHeraldText = 'नेशनल हेराल्ड';
    }
  }

  void _updateDrawerABillionOneVoicesText() {
    switch (_selectedLocale.languageCode) {
      case 'hi':
        _partydrawerABillionOneVoicesText = 'एक अरब और एक आवाज';
        break;
      case 'en':
        _partydrawerABillionOneVoicesText = 'A Billion & One Voices';
        break;
      default:
        _partydrawerABillionOneVoicesText = 'एक अरब और एक आवाज';
    }
  }

  void _updateDrawerFactChecksText() {
    switch (_selectedLocale.languageCode) {
      case 'hi':
        _partydrawerFactChecksText = 'तथ्य जांच';
        break;
      case 'en':
        _partydrawerFactChecksText = 'Fact Checks';
        break;
      default:
        _partydrawerFactChecksText = 'तथ्य जांच';
    }
  }

  //Join the Movement
  void _updateDrawerJoinTheMovementText() {
    switch (_selectedLocale.languageCode) {
      case 'hi':
        _partydrawerJoinTheMovementText = 'आंदोलन में शामिल हों';
        break;
      case 'en':
        _partydrawerJoinTheMovementText = 'Join The Movement  ';
        break;
      default:
        _partydrawerJoinTheMovementText = 'आंदोलन में शामिल हों';
    }
  }

  void _updateDrawerWorkForUsText() {
    switch (_selectedLocale.languageCode) {
      case 'hi':
        _partydrawerWorkForUsText = 'हमारे लिए काम करें';
        break;
      case 'en':
        _partydrawerWorkForUsText = 'Work For Us';
        break;
      default:
        _partydrawerWorkForUsText = 'हमारे लिए काम करें';
    }
  }

  void _updateDrawerVolunteerText() {
    switch (_selectedLocale.languageCode) {
      case 'hi':
        _partydrawervolunteerText = 'स्वयंसेवक';
        break;
      case 'en':
        _partydrawervolunteerText = 'volunteer';
        break;
      default:
        _partydrawervolunteerText = 'स्वयंसेवक';
    }
  }

  void _updateDrawerLocateOfficeText() {
    switch (_selectedLocale.languageCode) {
      case 'hi':
        _partydrawerLocateOfficeText = 'कार्यालय का पता लगाएँ';
        break;
      case 'en':
        _partydrawerLocateOfficeText = 'Locate Office';
        break;
      default:
        _partydrawerLocateOfficeText = 'कार्यालय का पता लगाएँ';
    }
  }


  void _updateKnowText() {
    switch (_selectedLocale.languageCode) {
      case 'hi':
        _partyKnowText = 'अपने विधायक/सांसद को जानें';
        break;
      case 'en':
        _partyKnowText = 'Know your MLA/MP';
        break;
      default:
        _partyKnowText = 'अपने विधायक/सांसद को जानें';
    }
  }

  void _updatePollText() {
    switch (_selectedLocale.languageCode) {
      case 'hi':
        _partyPollText = 'मतदान प्रबंधन';
        break;
      case 'en':
        _partyPollText = 'Poll Management';
        break;
      default:
        _partyPollText = 'मतदान प्रबंधन';
    }
  }

  void _updateConstituencyText() {
    switch (_selectedLocale.languageCode) {
      case 'hi':
        _partyConstituencyText = 'निर्वाचन क्षेत्र का अवलोकन';
        break;
      case 'en':
        _partyConstituencyText = 'Constituency Overview';
        break;
      default:
        _partyConstituencyText = 'निर्वाचन क्षेत्र का अवलोकन';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(_partytitleText,style: TextStyle(fontWeight: FontWeight.w900,),),
        centerTitle: true,
        backgroundColor: Colors.blue[300],
        actions: [
          Container(
            // width: 125,
            child: Image.asset(
              "assets/Party_Images/party_logoone.png",
            ),
          ),
        ],
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () => _changeLanguage(const Locale('en', 'US')),
            child: Text('EN'),
          ),
          SizedBox(height: 16),
          FloatingActionButton(
            onPressed: () => _changeLanguage(const Locale('hi', 'HI')),
            child: Text('HI'),
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.blue[500],
        child: ListView(
          //padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue[700],
              ),
              child: Container(
                child: Center(
                  child: Stack(
                    children: [
                      // Background image
                      Image.asset(
                        'assets/Party_Images/rahuldrawer.jpg', // Replace with your image path
                        fit: BoxFit.cover,
                      ),
                      // Text overlay
                      // Center(
                      //   child: Text(
                      //     'Drawer Header',
                      //     style: TextStyle(
                      //       color: Colors.white,
                      //       fontSize: 24,
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ),
            ),

            //Drawer About
            SingleChildScrollView(
              child: ExpansionTile(
                title: Text(_partyaboutText,),//Home
                leading: const Icon(Icons.person), //add icon
                childrenPadding:
                const EdgeInsets.only(left: 60), //children padding
                children: [
                  ListTile(
                    title: Text(_partydrawerIncText,),//Inc Constitutions
                    onTap: _launchUrlINcConstitution,
                  ),

                  ListTile(
                    title: Text(_partydrawerhistoryText),//brief
                    onTap: _launchUrlBriefhistory,
                  ),

                  ListTile(
                    title: Text(_partydrawerOurvalueText,),//Our values
                    onTap: _launchUrlOurvalues,
                  ),

                  ListTile(
                    title: Text(_partydrawerOurInspirationText,),//Influence
                    onTap: _launchUrlOurinspirations,
                  ),

                  ListTile(
                    title: Text(_partydrawerOurAchivementsText,),//Andministrative
                    onTap: _launchUrlOurachivements,
                  ),

                  ListTile(
                    title: Text(_partydrawerOurPoliciesText,),//Andministrative
                    onTap: _launchUrlOurpolicies,
                  ),
                  //more child menu
                ],
              ),
            ),

            //Drawer AICC
            SingleChildScrollView(
              child: ExpansionTile(
                title: Text(_partyaiccText,),//Our Leadership
                leading: const Icon(Icons.person), //add icon
                childrenPadding:
                const EdgeInsets.only(left: 60), //children padding
                children: [
                  ListTile(
                    title: Text(_partydrawerAICCOfficeBearersText,),//Founders
                    onTap: _launchUrlAicc,
                  ),

                  ListTile(
                    title: Text(_partydrawerCWCText,),//Bio Of Leaders
                    onTap: _launchUrlCwc,
                  ),

                  ListTile(
                    title: Text(_partydrawerCentralElectionAuthorityText),//NTR
                    onTap: _launchUrlCenterElectionAuth,
                  ),
                  ListTile(
                    title: Text(_partydrawerCentralElectionCommitteeText,),//NTR
                    onTap: _launchUrlCenterElectionAuth,
                  ),
                  ListTile(
                    title: Text(_partydrawerAICCDeptsCellsText),//NTR
                    onTap: _launchUrlAiccdepts,
                  ), //more child menu
                ],
              ),
            ),

            //Drawer Voice of the Nation
            SingleChildScrollView(
              child: ExpansionTile(
                title: Text(_partyVoiceoftheNationText,),
                leading: const Icon(Icons.person), //add icon
                childrenPadding:
                const EdgeInsets.only(left: 60), //children padding
                children: [
                  ListTile(
                    title: Text(_partydrawerInFocusText,),//Manifesto
                    onTap: _launchUrlInfocus,
                  ),

                  ListTile(
                    title: Text(_partydrawerCongressSandeshText,),//Mahanadu
                    onTap: _launchUrlCongresssandesh,
                  ),

                  ListTile(
                    title: Text(_partydrawerNationalHeraldText,),//My Pictures
                    onTap: _launchUrlNationalserald,
                  ),
                  ListTile(
                    title: Text(_partydrawerABillionOneVoicesText,),//Logos
                    onTap: _launchUrlAbillion,
                  ),
                  ListTile(
                    title: Text(_partydrawerFactChecksText,),//pictures
                    onTap: _launchUrlFactChecks,
                  ),
                  ///more child menu
                ],
              ),
            ),
            //Drawer Promotional Information
            SingleChildScrollView(
              child: ExpansionTile(
                title: Text(_partydrawerJoinTheMovementText,),//Promotional Information
                leading: const Icon(Icons.person), //add icon
                childrenPadding:
                const EdgeInsets.only(left: 60), //children padding
                children: [
                  ListTile(
                    title: Text(_partydrawerWorkForUsText,),//Banners
                    onTap: _launchUrlWork,
                  ),

                  ListTile(
                    title: Text(_partydrawervolunteerText,),//posters
                    onTap: _launchUrlVolunteer,
                  ),

                  ListTile(
                    title: Text(_partydrawerLocateOfficeText,),//campaign
                    onTap: _launchUrlLocate,
                  ),
                ],
              ),
            ),
            //Drawer Media Resources
            SingleChildScrollView(
              child: ExpansionTile(
                title: Text(_partydrawerFrontalOrganizationsText,),//Media Resources
                leading: const Icon(Icons.person), //add icon
                childrenPadding:
                const EdgeInsets.only(left: 60), //children padding
                children: [
                  ListTile(
                    title: Text(_partydrawerCongressSevadalText,),//Press Release
                    onTap: _launchUrlCongress,
                  ),

                  ListTile(
                    title: Text(_partydrawerIndianYouthCongressText,),//Programs
                    onTap: _launchUrlIndianyouth,
                  ),

                  ListTile(
                    title: Text(_partydrawerAllIndiaMahilaCongressText,),//Interviews
                    onTap: _launchUrlAllIndia,
                  ),
                  ListTile(
                    title: Text(_partydrawerINTUCText,),//photo
                    onTap: _launchUrlIntuc,
                  ),
                  ListTile(
                    title: Text(_partydrawerNSUIText,),//video
                    onTap: _launchUrlNsui,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 8,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PartyLeader()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[300],
                    fixedSize: const Size(190, 190),
                    shape: const CircleBorder(),
                  ),
                  child:  Text(
                    _partyKnowText,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                      letterSpacing: 0.8,
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const UserForm()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[300],
                    fixedSize: const Size(190, 190),
                    shape: const CircleBorder(),
                  ),
                  child:  Text(
                    _partyPollText,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        letterSpacing: 0.8),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const ConstituencyOverview()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[300],
                    fixedSize: const Size(190, 190),
                    shape: const CircleBorder(),
                  ),
                  child:  Text(
                    _partyConstituencyText,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        letterSpacing: 0.8),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const YouTudeLinks()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[300],
                    fixedSize: const Size(190, 190),
                    shape: const CircleBorder(),
                  ),
                  child: Image.asset('assets/Social_Media/youtudelogo.png')
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//
//
//

Future<void> _launchUrlINcConstitution() async {
  if (!await launchUrl(_urlINCContitution)) {
    throw Exception('Could not launch $_urlINCContitution');
  }
}

Future<void> _launchUrlBriefhistory() async {
  if (!await launchUrl(_urlBriefhistory)) {
    throw Exception('Could not launch $_urlBriefhistory');
  }
}

Future<void> _launchUrlOurvalues() async {
  if (!await launchUrl(_urlOurvalues)) {
    throw Exception('Could not launch $_urlOurvalues');
  }
}

Future<void> _launchUrlOurinspirations() async {
  if (!await launchUrl(_urlOurinspirations)) {
    throw Exception('Could not launch $_urlOurinspirations');
  }
}

Future<void> _launchUrlOurachivements() async {
  if (!await launchUrl(_urlOurachivements)) {
    throw Exception('Could not launch $_urlOurachivements');
  }
}

Future<void> _launchUrlOurpolicies() async {
  if (!await launchUrl(_urlOurpolicies)) {
    throw Exception('Could not launch $_urlOurpolicies');
  }
}

Future<void> _launchUrlAicc() async {
  if (!await launchUrl(_urlAicc)) {
    throw Exception('Could not launch $_urlAicc');
  }
}

Future<void> _launchUrlCwc() async {
  if (!await launchUrl(_urlCwc)) {
    throw Exception('Could not launch $_urlCwc');
  }
}

Future<void> _launchUrlCenterElectionAuth() async {
  if (!await launchUrl(_urlCenterElectionAuth)) {
    throw Exception('Could not launch $_urlCenterElectionAuth');
  }
}

Future<void> _launchUrl(CenterElectionCommi) async {
  if (!await launchUrl(_urlCenterElectionCommi)) {
    throw Exception('Could not launch $_urlCenterElectionCommi');
  }
}

Future<void> _launchUrlAiccdepts() async {
  if (!await launchUrl(_urlAiccdepts)) {
    throw Exception('Could not launch $_urlAiccdepts');
  }
}

Future<void> _launchUrlInfocus() async {
  if (!await launchUrl(_urlInfocus)) {
    throw Exception('Could not launch $_urlInfocus');
  }
}

Future<void> _launchUrlCongresssandesh() async {
  if (!await launchUrl(_urlCongresssandesh)) {
    throw Exception('Could not launch $_urlCongresssandesh');
  }
}

Future<void> _launchUrlNationalserald() async {
  if (!await launchUrl(_urlNationalserald)) {
    throw Exception('Could not launch $_urlNationalserald');
  }
}

Future<void> _launchUrlAbillion() async {
  if (!await launchUrl(_urlAbillion)) {
    throw Exception('Could not launch $_urlAbillion');
  }
}

Future<void> _launchUrlFactChecks() async {
  if (!await launchUrl(_urlFactChecks)) {
    throw Exception('Could not launch $_urlFactChecks');
  }
}

Future<void> _launchUrlWork() async {
  if (!await launchUrl(_urlWork)) {
    throw Exception('Could not launch $_urlWork');
  }
}

Future<void> _launchUrlVolunteer() async {
  if (!await launchUrl(_urlVolunteer)) {
    throw Exception('Could not launch $_urlVolunteer');
  }
}

Future<void> _launchUrlLocate() async {
  if (!await launchUrl(_urlLocate)) {
    throw Exception('Could not launch $_urlLocate');
  }
}

Future<void> _launchUrlCongress() async {
  if (!await launchUrl(_urlCongress)) {
    throw Exception('Could not launch $_urlCongress');
  }
}

Future<void> _launchUrlIndianyouth() async {
  if (!await launchUrl(_urlIndianyouth)) {
    throw Exception('Could not launch $_urlIndianyouth');
  }
}

Future<void> _launchUrlAllIndia() async {
  if (!await launchUrl(_urlAllIndia)) {
    throw Exception('Could not launch $_urlAllIndia');
  }
}

Future<void> _launchUrlIntuc() async {
  if (!await launchUrl(_urlIntuc)) {
    throw Exception('Could not launch $_urlIntuc');
  }
}

Future<void> _launchUrlNsui() async {
  if (!await launchUrl(_urlNsui)) {
    throw Exception('Could not launch $_urlNsui');
  }
}
