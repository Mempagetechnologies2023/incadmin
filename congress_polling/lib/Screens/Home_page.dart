import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'Leaders_page.dart';
import 'Polling_page.dart';
import 'Social_media.dart';

final Uri _urlourphilosophy = Uri.parse('https://www.bjp.org/philosophy');

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


//Home Screen
final Uri _urlBhartjudo = Uri.parse('https://bharatjodonyayyatra.com/');

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List imageList = [
    {"id": 1, "image_path": 'assets/Slideing_Images/imageone.jpg'},
    {"id": 2, "image_path": 'assets/Slideing_Images/imagetwo.jpg'},
    {"id": 3, "image_path": 'assets/Slideing_Images/imagethree.jpg'},
    {"id": 4, "image_path": 'assets/Slideing_Images/imagefour.jpg'},
    {"id": 5, "image_path": 'assets/Slideing_Images/imagefive.jpg'},
    {"id": 6, "image_path": 'assets/Slideing_Images/imagesix.jpg'},
    {"id": 7, "image_path": 'assets/Slideing_Images/imageseven.jpg'},
  ];
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;

  List imageLists = [
    {"id": 1, "image_path": 'assets/images/modi11.png'},
    {"id": 2, "image_path": 'assets/images/amithsha.jpeg'},
    {"id": 3, "image_path": 'assets/images/jpnadda.jpeg'},
  ];
  // final CarouselController carouselController = CarouselController();
  // int currentIndex = 0;
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

  //History Of the Party
  String _partyHistoryOfthePartyTitleText = 'पार्टी का इतिहास';
  String _partyHistoryOfthePartyDiscriptionText = '      दांडी सत्याग्रह की 89वीं वर्षगांठ पर कांग्रेस कार्य समिति की बैठक अहमदाबाद ऐतिहासिक दांडी सत्याग्रह को मनाने के लिए, और हमारी स्वतंत्रता के लिए गांधीजी के योगदान और शांति के प्रति उनकी प्रतिबद्धता का जश्न मनाने के लिए, अहमदाबाद, गुजरात में एक बैठक आयोजित की गई थी। श्रीमती प्रियंका गांधी वाद्रा ने इस अवसर पर बोलते हुए प्रत्येक भारतीय को शांति का माहौल बनाए रखने के प्रति उनके कर्तव्य की याद दिलाई। उन्होंने पुलवामा में हमले की निंदा की और मारे गए लोगों के प्रति सम्मान व्यक्त किया और कहा कि देश को ऐसे समय में एक साथ आना चाहिए और भाजपा द्वारा हिंसा और भय को बढ़ावा देने को खारिज करना चाहिए।';

  //About The Party
  String _partyAboutthePartyTitleText = 'पार्टी के बारे में';
  String _partyAboutthePartyDiscriptionText = '      राहुल गांधी को सर्वसम्मति से पार्टी अध्यक्ष चुना गया 24, अकबर रोड स्थित पार्टी मुख्यालय में 16 दिसंबर, 2017 को एक सहज परिवर्तन देखा गया, क्योंकि राहुल गांधी को 11 दिसंबर को सर्वसम्मति से पार्टी अध्यक्ष चुना गया था। कमान संभालते ही राहुल गांधी ने पार्टी कार्यकर्ताओं से कहा, ''मैं सभी कांग्रेस कार्यकर्ताओं और नेताओं को आश्वस्त करना चाहता हूं कि आप सभी मेरे परिवार हैं...मैं इस देश के युवाओं को बताना चाहता हूं कि अक्सर कांग्रेस का जिक्र किया जाता है सबसे पुरानी पार्टी के रूप में लेकिन आगे चलकर हम इसे सबसे पुरानी युवा पार्टी बनाने जा रहे हैं।';

  String _partyBharatjudoTitleText = 'भारत जूडो यात्रा';
  String _partyBharatjudoDiscriptionText = '      हमारा राष्ट्र एक महत्वपूर्ण मोड़ पर खड़ा है, उन चुनौतियों से जूझ रहा है जो सामूहिक कार्रवाई की मांग करती हैं। भारत में बलात्कारियों को माला पहनाए जाने से लेकर संसद से 100 से अधिक विपक्षी सांसदों के निलंबन तक, आज के भारत की कठोर वास्तविकता के लिए एक शक्तिशाली प्रतिक्रिया की आवश्यकता है। हमारे संविधान, संघीय ढांचे और संस्थानों पर हमला हो रहा है। ऐसे समय में जब दलितों, महिलाओं और किसानों के खिलाफ अत्याचार अंतहीन हैं, भारत को बदलाव की जरूरत है। \n      हमारे देश और इसके लोगों के खिलाफ भाजपा-आरएसएस द्वारा किए जा रहे अन्याय का मुकाबला करने के लिए, कांग्रेस पार्टी भारत जोड़ो न्याय यात्रा निकाल रही है। राहुल गांधी के नेतृत्व में, 14 जनवरी, 2024 को मणिपुर से मुंबई तक शुरू होने वाला 6700 किलोमीटर लंबा यह मार्च, 2022 की भारत जोड़ो यात्रा की गति पर आधारित है, जो गहरे बैठे सामाजिक, राजनीतिक और आर्थिक अन्याय को संबोधित करता है। \n      यह आंदोलन एक राजनीतिक कवायद से कहीं अधिक है; यह भारत की मूल भावना को खतरे में डालने वाली विभाजनकारी विचारधारा के खिलाफ एक धर्मयुद्ध है। यह यात्रा अन्याय और नफरत की बढ़ती लहर के खिलाफ, राजनीतिक संबद्धता से ऊपर उठकर, 15 राज्यों से गुजरते हुए सभी को न्याय प्रदान करने पर जोर देते हुए, न्याय पर केंद्रित है। \n      अपने मूल में, न्याय यात्रा एक दशक के गलत नीति-निर्माण के विनाशकारी परिणामों के बारे में चिंता व्यक्त करने के लिए एक मंच के रूप में कार्य करती है, जिसके परिणामस्वरूप व्यापक बेरोजगारी, मुद्रास्फीति, मानवाधिकारों का हनन, सांप्रदायिकता और संस्थानों में बढ़ता अविश्वास होता है। यह उस शासन के ख़िलाफ़ लड़ाई है जो सभी आवाज़ों को दबाकर फल-फूल रहा है - जनता की, विपक्ष की, या कोई भी आवाज़ जो इस पर सवाल उठाने की हिम्मत करती है। यह लोगों की आवाज उठाने का आंदोलन है.\n      भारत की चिंताजनक आर्थिक असमानता को उजागर करते हुए, जहां शीर्ष 5% के पास देश की 60% संपत्ति है, जबकि निचले 50% के पास 3% के लिए संघर्ष है, यात्रा आर्थिक न्याय की तत्काल आवश्यकता को रेखांकित करती है। भारत जोड़ो न्याय यात्रा साठगांठ वाले पूंजीवाद का मुकाबला करती है, अडानी जैसे अरबपतियों के पक्ष में नियमों में हेरफेर को उजागर करती है और यह याद दिलाती है कि आर्थिक समृद्धि समावेशी होनी चाहिए। \n      जैसे ही यात्रा शुरू होती है, हमारी भावुक अपील सभी से होती है: न्याय योद्धा बनें, न्याय के लिए योद्धा बनें। आंदोलन में शामिल हों, अन्याय के खिलाफ एकजुट हों और सभी के लिए समानता, समावेशिता और न्याय का प्रतीक भारत बनाने का प्रयास करें। यह बदलाव का हिस्सा बनने और उज्जवल, अधिक न्यायसंगत भविष्य की ओर चलने का समय है।';

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

      //History Of tHe Party
      _updateHistoryOfthePartyTitleText();
      _updateHistoryOfthePartyDiscriptionText();

      //About The Party
      _updateAboutthePartyTitleText();
      _updateAboutthePartyDiscriptionText();

      //bharat judo
      _updateBharatjudoTitleText();
      _updateBharatjudoDiscriptionText();


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


  //History Of the Party
  void _updateHistoryOfthePartyTitleText() {
    switch (_selectedLocale.languageCode) {
      case 'hi':
        _partyHistoryOfthePartyTitleText = 'पार्टी का इतिहास';
        break;
      case 'en':
        _partyHistoryOfthePartyTitleText = 'History Of the Party ';
        break;
      default:
        _partyHistoryOfthePartyTitleText = 'पार्टी का इतिहास';
    }
  }

  void _updateHistoryOfthePartyDiscriptionText() {
    switch (_selectedLocale.languageCode) {
      case 'hi':
        _partyAboutthePartyDiscriptionText = '      राहुल गांधी को सर्वसम्मति से पार्टी अध्यक्ष चुना गया 24, अकबर रोड स्थित पार्टी मुख्यालय में 16 दिसंबर, 2017 को एक सहज परिवर्तन देखा गया, क्योंकि राहुल गांधी को 11 दिसंबर को सर्वसम्मति से पार्टी अध्यक्ष चुना गया था। कमान संभालते ही राहुल गांधी ने पार्टी कार्यकर्ताओं से कहा, ''मैं सभी कांग्रेस कार्यकर्ताओं और नेताओं को आश्वस्त करना चाहता हूं कि आप सभी मेरे परिवार हैं...मैं इस देश के युवाओं को बताना चाहता हूं कि अक्सर कांग्रेस का जिक्र किया जाता है सबसे पुरानी पार्टी के रूप में लेकिन आगे चलकर हम इसे सबसे पुरानी युवा पार्टी बनाने जा रहे हैं।"';
        break;
      case 'en':
        _partyAboutthePartyDiscriptionText = '      Rahul Gandhi unanimously elected Party President The party headquarters at 24, Akbar Road saw a smooth change of guard on 16th December, 2017, as Rahul Gandhi was unanimously elected Party President on the 11th of December. As he took over the reins, Rahul Gandhi said to the party workers, “I want to assure all the Congress workers and leaders that you are all my family...I want to tell the youth of this country that Congress is often referred to as the grand old party but going forth we are going to make it the grand old young party."';
        break;
      default:
        _partyAboutthePartyDiscriptionText = '      राहुल गांधी को सर्वसम्मति से पार्टी अध्यक्ष चुना गया 24, अकबर रोड स्थित पार्टी मुख्यालय में 16 दिसंबर, 2017 को एक सहज परिवर्तन देखा गया, क्योंकि राहुल गांधी को 11 दिसंबर को सर्वसम्मति से पार्टी अध्यक्ष चुना गया था। कमान संभालते ही राहुल गांधी ने पार्टी कार्यकर्ताओं से कहा, ''मैं सभी कांग्रेस कार्यकर्ताओं और नेताओं को आश्वस्त करना चाहता हूं कि आप सभी मेरे परिवार हैं...मैं इस देश के युवाओं को बताना चाहता हूं कि अक्सर कांग्रेस का जिक्र किया जाता है सबसे पुरानी पार्टी के रूप में लेकिन आगे चलकर हम इसे सबसे पुरानी युवा पार्टी बनाने जा रहे हैं।"';
    }
  }

  //about the Party
  void _updateAboutthePartyTitleText() {
    switch (_selectedLocale.languageCode) {
      case 'hi':
        _partyAboutthePartyTitleText = 'पार्टी के बारे में';
        break;
      case 'en':
        _partyAboutthePartyTitleText = 'About the Party ';
        break;
      default:
        _partyAboutthePartyTitleText = 'पार्टी के बारे में';
    }
  }

  void _updateAboutthePartyDiscriptionText() {
    switch (_selectedLocale.languageCode) {
      case 'hi':
        _partyHistoryOfthePartyDiscriptionText = '      दांडी सत्याग्रह की 89वीं वर्षगांठ पर कांग्रेस कार्य समिति की बैठक अहमदाबाद ऐतिहासिक दांडी सत्याग्रह को मनाने के लिए, और हमारी स्वतंत्रता के लिए गांधीजी के योगदान और शांति के प्रति उनकी प्रतिबद्धता का जश्न मनाने के लिए, अहमदाबाद, गुजरात में एक बैठक आयोजित की गई थी। श्रीमती प्रियंका गांधी वाद्रा ने इस अवसर पर बोलते हुए प्रत्येक भारतीय को शांति का माहौल बनाए रखने के प्रति उनके कर्तव्य की याद दिलाई। उन्होंने पुलवामा में हमले की निंदा की और मारे गए लोगों के प्रति सम्मान व्यक्त किया और कहा कि देश को ऐसे समय में एक साथ आना चाहिए और भाजपा द्वारा हिंसा और भय को बढ़ावा देने को खारिज करना चाहिए।';
        break;
      case 'en':
        _partyHistoryOfthePartyDiscriptionText = '      Congress Working Committee meeting, Ahmadabad, on the 89th anniversary of the Dandi SatyagrahTo commemorate the historic Dandi Satyagrah, and celebrate Gandhiji’s contribution towards our Independence and his commitment to peace, a meeting was held in Ahmedabad, Gujarat. Smt Priyanka Gandhi Vadra spoke on the occasion as she reminded each Indian of their duty towards maintaining an atmosphere of peace. She condemned the attack in Pulwama and paid her respects to the lives lost, and said the country must come together at a time like this and reject the BJP’s promotion of violence and fear.';
        break;
      default:
        _partyHistoryOfthePartyDiscriptionText = '      दांडी सत्याग्रह की 89वीं वर्षगांठ पर कांग्रेस कार्य समिति की बैठक अहमदाबाद ऐतिहासिक दांडी सत्याग्रह को मनाने के लिए, और हमारी स्वतंत्रता के लिए गांधीजी के योगदान और शांति के प्रति उनकी प्रतिबद्धता का जश्न मनाने के लिए, अहमदाबाद, गुजरात में एक बैठक आयोजित की गई थी। श्रीमती प्रियंका गांधी वाद्रा ने इस अवसर पर बोलते हुए प्रत्येक भारतीय को शांति का माहौल बनाए रखने के प्रति उनके कर्तव्य की याद दिलाई। उन्होंने पुलवामा में हमले की निंदा की और मारे गए लोगों के प्रति सम्मान व्यक्त किया और कहा कि देश को ऐसे समय में एक साथ आना चाहिए और भाजपा द्वारा हिंसा और भय को बढ़ावा देने को खारिज करना चाहिए।';
    }
  }

  //Bharat judo
  void _updateBharatjudoTitleText() {
    switch (_selectedLocale.languageCode) {
      case 'hi':
        _partyBharatjudoTitleText = 'भारत जूडो यात्रा';
        break;
      case 'en':
        _partyBharatjudoTitleText = 'Bharat Judo Yathra ';
        break;
      default:
        _partyBharatjudoTitleText = 'भारत जूडो यात्रा';
    }
  }

  void _updateBharatjudoDiscriptionText() {
    switch (_selectedLocale.languageCode) {
      case 'hi':
        _partyBharatjudoDiscriptionText = '      हमारा राष्ट्र एक महत्वपूर्ण मोड़ पर खड़ा है, उन चुनौतियों से जूझ रहा है जो सामूहिक कार्रवाई की मांग करती हैं। भारत में बलात्कारियों को माला पहनाए जाने से लेकर संसद से 100 से अधिक विपक्षी सांसदों के निलंबन तक, आज के भारत की कठोर वास्तविकता के लिए एक शक्तिशाली प्रतिक्रिया की आवश्यकता है। हमारे संविधान, संघीय ढांचे और संस्थानों पर हमला हो रहा है। ऐसे समय में जब दलितों, महिलाओं और किसानों के खिलाफ अत्याचार अंतहीन हैं, भारत को बदलाव की जरूरत है। \n      हमारे देश और इसके लोगों के खिलाफ भाजपा-आरएसएस द्वारा किए जा रहे अन्याय का मुकाबला करने के लिए, कांग्रेस पार्टी भारत जोड़ो न्याय यात्रा निकाल रही है। राहुल गांधी के नेतृत्व में, 14 जनवरी, 2024 को मणिपुर से मुंबई तक शुरू होने वाला 6700 किलोमीटर लंबा यह मार्च, 2022 की भारत जोड़ो यात्रा की गति पर आधारित है, जो गहरे बैठे सामाजिक, राजनीतिक और आर्थिक अन्याय को संबोधित करता है। \n      यह आंदोलन एक राजनीतिक कवायद से कहीं अधिक है; यह भारत की मूल भावना को खतरे में डालने वाली विभाजनकारी विचारधारा के खिलाफ एक धर्मयुद्ध है। यह यात्रा अन्याय और नफरत की बढ़ती लहर के खिलाफ, राजनीतिक संबद्धता से ऊपर उठकर, 15 राज्यों से गुजरते हुए सभी को न्याय प्रदान करने पर जोर देते हुए, न्याय पर केंद्रित है। \n      अपने मूल में, न्याय यात्रा एक दशक के गलत नीति-निर्माण के विनाशकारी परिणामों के बारे में चिंता व्यक्त करने के लिए एक मंच के रूप में कार्य करती है, जिसके परिणामस्वरूप व्यापक बेरोजगारी, मुद्रास्फीति, मानवाधिकारों का हनन, सांप्रदायिकता और संस्थानों में बढ़ता अविश्वास होता है। यह उस शासन के ख़िलाफ़ लड़ाई है जो सभी आवाज़ों को दबाकर फल-फूल रहा है - जनता की, विपक्ष की, या कोई भी आवाज़ जो इस पर सवाल उठाने की हिम्मत करती है। यह लोगों की आवाज उठाने का आंदोलन है.\n      भारत की चिंताजनक आर्थिक असमानता को उजागर करते हुए, जहां शीर्ष 5% के पास देश की 60% संपत्ति है, जबकि निचले 50% के पास 3% के लिए संघर्ष है, यात्रा आर्थिक न्याय की तत्काल आवश्यकता को रेखांकित करती है। भारत जोड़ो न्याय यात्रा साठगांठ वाले पूंजीवाद का मुकाबला करती है, अडानी जैसे अरबपतियों के पक्ष में नियमों में हेरफेर को उजागर करती है और यह याद दिलाती है कि आर्थिक समृद्धि समावेशी होनी चाहिए। \n      जैसे ही यात्रा शुरू होती है, हमारी भावुक अपील सभी से होती है: न्याय योद्धा बनें, न्याय के लिए योद्धा बनें। आंदोलन में शामिल हों, अन्याय के खिलाफ एकजुट हों और सभी के लिए समानता, समावेशिता और न्याय का प्रतीक भारत बनाने का प्रयास करें। यह बदलाव का हिस्सा बनने और उज्जवल, अधिक न्यायसंगत भविष्य की ओर चलने का समय है।';
        break;
      case 'en':
        _partyBharatjudoDiscriptionText = '      Our nation stands at a critical juncture, grappling with challenges that demand collective action. From India witnessing rapists being garlanded to the suspension of 100+ opposition MPs from the parliament, the harsh reality of todays India necessitates a powerful response. Our Constitution, federal structure, and institutions are under attack. In a time when atrocities against Dalits, women, and farmers are unending, India needs change. \n      To combat the injustices perpetrated by the BJP-RSS against our country and its people, the Congress party is marching the Bharat Jodo Nyay Yatra. Led by Rahul Gandhi, this 6700-kilometer-long march, starting on January 14, 2024, from Manipur to Mumbai, builds on the momentum of the 2022 Bharat Jodo Yatra, addressing deep-seated social, political, and economic injustices.\n      This movement is more than a political exercise; it is a crusade against the divisive ideology threatening the very essence of India. The yatra focuses on justice, emphasizing the delivery of justice to all by walking through 15 states, transcending political affiliations, against the rising tide of injustice and hatred.\n      At its core, the Nyay Yatra serves as a platform to voice concerns about the disastrous consequences of a decade of misguided policy-making, resulting in widespread unemployment, inflation, human rights abuses, communalism, and a growing mistrust in institutions. It is a fight against the regime thriving by suppressing all voices—those of the people, the opposition, or any voice that dares to question it. It is a movement to raise the peoples voice.\n      Highlighting Indias alarming economic disparity, where the top 5% own 60% of the nations wealth while the bottom 50% struggles with 3%, the Yatra underscores the urgent need for economic justice. The Bharat Jodo Nyay Yatra confronts crony capitalism, exposing rule manipulations favoring billionaires like Adani and serving as a reminder that economic prosperity must be inclusive. \n      As the Yatra begins, our impassioned appeal goes out to all: become Nyay Yoddhas, warriors for justice. Join the movement, stand united against injustice, and strive for a Bharat embodying equality, inclusivity, and justice for all. Its time to be part of the change and to walk towards a brighter, more equitable future. ';
        break;
      default:
        _partyBharatjudoDiscriptionText = '      हमारा राष्ट्र एक महत्वपूर्ण मोड़ पर खड़ा है, उन चुनौतियों से जूझ रहा है जो सामूहिक कार्रवाई की मांग करती हैं। भारत में बलात्कारियों को माला पहनाए जाने से लेकर संसद से 100 से अधिक विपक्षी सांसदों के निलंबन तक, आज के भारत की कठोर वास्तविकता के लिए एक शक्तिशाली प्रतिक्रिया की आवश्यकता है। हमारे संविधान, संघीय ढांचे और संस्थानों पर हमला हो रहा है। ऐसे समय में जब दलितों, महिलाओं और किसानों के खिलाफ अत्याचार अंतहीन हैं, भारत को बदलाव की जरूरत है। \n      हमारे देश और इसके लोगों के खिलाफ भाजपा-आरएसएस द्वारा किए जा रहे अन्याय का मुकाबला करने के लिए, कांग्रेस पार्टी भारत जोड़ो न्याय यात्रा निकाल रही है। राहुल गांधी के नेतृत्व में, 14 जनवरी, 2024 को मणिपुर से मुंबई तक शुरू होने वाला 6700 किलोमीटर लंबा यह मार्च, 2022 की भारत जोड़ो यात्रा की गति पर आधारित है, जो गहरे बैठे सामाजिक, राजनीतिक और आर्थिक अन्याय को संबोधित करता है। \n      यह आंदोलन एक राजनीतिक कवायद से कहीं अधिक है; यह भारत की मूल भावना को खतरे में डालने वाली विभाजनकारी विचारधारा के खिलाफ एक धर्मयुद्ध है। यह यात्रा अन्याय और नफरत की बढ़ती लहर के खिलाफ, राजनीतिक संबद्धता से ऊपर उठकर, 15 राज्यों से गुजरते हुए सभी को न्याय प्रदान करने पर जोर देते हुए, न्याय पर केंद्रित है। \n      अपने मूल में, न्याय यात्रा एक दशक के गलत नीति-निर्माण के विनाशकारी परिणामों के बारे में चिंता व्यक्त करने के लिए एक मंच के रूप में कार्य करती है, जिसके परिणामस्वरूप व्यापक बेरोजगारी, मुद्रास्फीति, मानवाधिकारों का हनन, सांप्रदायिकता और संस्थानों में बढ़ता अविश्वास होता है। यह उस शासन के ख़िलाफ़ लड़ाई है जो सभी आवाज़ों को दबाकर फल-फूल रहा है - जनता की, विपक्ष की, या कोई भी आवाज़ जो इस पर सवाल उठाने की हिम्मत करती है। यह लोगों की आवाज उठाने का आंदोलन है.\n      भारत की चिंताजनक आर्थिक असमानता को उजागर करते हुए, जहां शीर्ष 5% के पास देश की 60% संपत्ति है, जबकि निचले 50% के पास 3% के लिए संघर्ष है, यात्रा आर्थिक न्याय की तत्काल आवश्यकता को रेखांकित करती है। भारत जोड़ो न्याय यात्रा साठगांठ वाले पूंजीवाद का मुकाबला करती है, अडानी जैसे अरबपतियों के पक्ष में नियमों में हेरफेर को उजागर करती है और यह याद दिलाती है कि आर्थिक समृद्धि समावेशी होनी चाहिए। \n      जैसे ही यात्रा शुरू होती है, हमारी भावुक अपील सभी से होती है: न्याय योद्धा बनें, न्याय के लिए योद्धा बनें। आंदोलन में शामिल हों, अन्याय के खिलाफ एकजुट हों और सभी के लिए समानता, समावेशिता और न्याय का प्रतीक भारत बनाने का प्रयास करें। यह बदलाव का हिस्सा बनने और उज्जवल, अधिक न्यायसंगत भविष्य की ओर चलने का समय है।';
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: "route",
      home: Scaffold(
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
        body: Center(
          child: SingleChildScrollView(
            child:
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              InkWell(
                child:
                Container(
                  width: 590,
                  height: 350,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white,
                          spreadRadius: 0.2,
                          blurRadius: 0,
                        ),
                      ]),
                  child: CarouselSlider(
                    items: imageList
                        .map(
                          (item) => Image.asset(
                        item['image_path'],
                      ),
                    )
                        .toList(),
                    carouselController: carouselController,
                    options: CarouselOptions(
                      scrollPhysics: const BouncingScrollPhysics(),
                      autoPlay: true,
                      aspectRatio: 1,
                      viewportFraction: 1,
                      onPageChanged: (index, reason) {
                        currentIndex = index;
                      },
                    ),
                  ),
                ),
              ),

              Card(
                clipBehavior: Clip.antiAlias,
                color: Colors.blue[500],
                child: Column(
                  children: [
                    ListTile(
                      onTap: _launchUrlBriefhistory,
                      title:  Text(_partyHistoryOfthePartyTitleText,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(
                        8.0,
                      ),
                      child: Text(
                        _partyHistoryOfthePartyDiscriptionText,
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.start,
                      children: [],
                    ),
                    Image.asset('assets/Party_Images/history.jpg'),
                  ],
                ),
              ),

              Card(
                clipBehavior: Clip.antiAlias,
                color: Colors.grey[700],
                child: Column(
                  children: [
                    ListTile(
                      onTap: _launchUrlOurvalues,
                      title:  Text(
                        _partyAboutthePartyTitleText,
                        style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        _partyAboutthePartyDiscriptionText,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.start,
                      children: [
                      ],
                    ),
                    Image.asset('assets/Party_Images/abouttheparty.jpg'),
                  ],
                ),
              ),

              Card(
                elevation: 50,
                shadowColor: Colors.black,
                color: Colors.cyan,
                child: SizedBox(
                  // width: 800,
                  // height: 420,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Image.asset("assets/Party_Images/bharatjudo.jpg"),
                        Text(
                          _partyBharatjudoTitleText,
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.green[900],
                            fontWeight: FontWeight.w500,
                          ), //Textstyle
                        ), //Text
                        const SizedBox(
                          height: 10,
                        ), //SizedBox
                         Text(
                          _partyBharatjudoDiscriptionText,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ), //Textstyle
                        ), //Text
                        const SizedBox(
                          height: 10,
                        ), //SizedBox
                        SizedBox(
                          width: 120,
                          child: ElevatedButton(
                            onPressed: _launchUrlBhartjudo,
                            style: ButtonStyle(
                                backgroundColor:
                                MaterialStateProperty.all(Colors.green)),
                            child: const Padding(
                              padding: const EdgeInsets.all(4),
                              child: Row(
                                children:  [
                                  Icon(Icons.touch_app),
                                  Text('Visit')
                                ],
                              ),
                            ),
                          ),
                        ) //SizedBox
                      ],
                    ), //Column
                  ), //Padding
                ), //SizedBox
              ), //Card
            ]),
          ),
        ),
      ),
    );
  }
}


Future<void> _launchUrlourphilosophy() async {
  if (!await launchUrl(_urlourphilosophy)) {
    throw Exception('Could not launch $_urlourphilosophy');
  }
}

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

Future<void> _launchUrlBhartjudo() async {
  if (!await launchUrl(_urlBhartjudo)) {
    throw Exception('Could not launch $_urlBhartjudo');
  }
}
