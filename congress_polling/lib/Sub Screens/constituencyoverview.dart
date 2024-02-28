import 'package:flutter/material.dart';

import '../pages/constituencyresult.dart';

class ConstituencyOverview extends StatefulWidget {
  const ConstituencyOverview({super.key});

  @override
  State<ConstituencyOverview> createState() => _ConstituencyOverviewState();
}

class _ConstituencyOverviewState extends State<ConstituencyOverview> {
  String? selectedDistrict;
  String? selectedConstituency;

  List<String> districts = [
    'अमेठी (AMETHI)',
  ];
  Map<String, List<String>> constituencies = {
    'अमेठी (AMETHI)': ['तिलोई (Tiloi)', 'सैलून (Salon)', 'जगदीशपुर (Jagdishpur)','गौरीगंज (Gauriganj)','अमेठी (Amethi)'],
  };

  Map<String, Map<String, Map<String, String>>> districtConstituencyDetails = {

    'अमेठी (AMETHI)-अमेठी (Amethi)': {
      'content': {
        'title': 'अमेठी (AMETHI)',
        'imageTitle': 'assets/Party_Images/amethimap.png',
        'heading': 'About:',
        'about':
        '         अमेठी भारतीय राज्य उत्तर प्रदेश के फैजाबाद मंडल के एक जिले का नाम है। गौरीगंज शहर अमेठी जिले का मुख्यालय है। अमेठी उत्तर प्रदेश का 72वां जिला था जो 1 जुलाई 2010 को तत्कालीन सुल्तानपुर जिले की तीन तहसीलों अर्थात् अमेठी, गौरीगंज और मुसाफिरखाना और तत्कालीन रायबरेली जिले की दो तहसीलों अर्थात् सलोन और तिलोई को मिलाकर अस्तित्व में आया और इसका नाम छत्रपति शाहूजी महाराज रखा गया। नगर. हालाँकि, बाद में इसका नाम बदलकर वापस अमेठी कर दिया गया। ',
        'description': '      गढ़माफी धाम गौरीगंज से लगभग 7 किलोमीटर दूर माधोपुर गांव में स्थित है।  यह भक्तों के लिए बहुत धार्मिक महत्व रखता है।  यहां स्थापित प्राथमिक देवता भगवान हनुमान हैं। भगवान हनुमान की मूर्ति विशेष रूप से प्रसिद्ध है और दूर-दूर से भक्तों को आकर्षित करती है।  भगवान हनुमान की मूर्ति के अलावा, मंदिर में कई अन्य देवता और मूर्तियाँ हैं, जिनमें से प्रत्येक का अपना धार्मिक और सांस्कृतिक महत्व है। अपने आध्यात्मिक महत्व और प्रतिष्ठित मूर्तियों की उपस्थिति के कारण, गढ़माफ़ी धाम स्थानीय लोगों और तीर्थयात्रियों दोनों को काफी संख्या में भक्तों को आकर्षित करता है। मंदिर की सांस्कृतिक विरासत का एक अभिन्न अंग होने की संभावना है क्षेत्र, समुदाय की धार्मिक प्रथाओं और मान्यताओं को दर्शाता है।  गौरीगंज के अपेक्षाकृत करीब स्थित होने के कारण, मंदिर उन लोगों के लिए आसानी से पहुंच योग्य है जो वहां जाना चाहते हैं और अपनी श्रद्धा अर्पित करना चाहते हैं।  यह एक के रूप में भी काम कर सकता है धार्मिक तीर्थयात्राओं के लिए गंतव्य, उन भक्तों को आकर्षित करता है जो आध्यात्मिक यात्रा पर निकलना चाहते हैं। मंदिर अक्सर पूजा स्थलों से कहीं अधिक कार्य करते हैं। वे सामुदायिक केंद्रों के रूप में काम कर सकते हैं जहां लोग विभिन्न धार्मिक और सांस्कृतिक गतिविधियों के लिए इकट्ठा होते हैं। इसके धार्मिक महत्व और भगवान हनुमान की उल्लेखनीय मूर्ति को देखते हुए, गढ़माफी धाम संभावित रूप से एक पर्यटक आकर्षण हो सकता है, जो पर्यटकों को इसका अनुभव करने में रुचि रखता है। स्थानीय धार्मिक और सांस्कृतिक परिवेश। यह सांस्कृतिक आदान-प्रदान को भी सुविधाजनक बना सकता है, क्योंकि विभिन्न क्षेत्रों और पृष्ठभूमि के लोग जश्न मनाने और पूजा करने के लिए एक साथ आते हैं।  ऐसे महत्वपूर्ण धार्मिक स्थल की उपस्थिति के आर्थिक प्रभाव हो सकते हैं, आगंतुकों और तीर्थयात्रियों की जरूरतों को पूरा करने के लिए क्षेत्र के आसपास व्यवसायों और सेवाओं का विकास हो रहा है।',
        'imagePath': 'assets/Party_Images/Gadhamafi.jpg',
        'imagePathOne': 'assets/Party_Images/Nandmahar.jpg',
        'imagePathTwo': 'assets/Party_Images/Jayasi.jpg',
        'descriptionOne': '         नंदमहर धाम, गौरीगंज, उत्तर प्रदेश में स्थित एक प्रसिद्ध स्थान है। हिंदू धर्म में सबसे प्रतिष्ठित देवताओं में से एक, भगवान श्री कृष्ण से जुड़ा हुआ है। यह संबंध स्थान की पवित्रता और महत्व को बढ़ाता है।  मंदिर परिसर भगवान बलराम से भी जुड़ा हो सकता है, जिन्हें भगवान कृष्ण के बड़े भाई और हिंदू पौराणिक कथाओं में एक महत्वपूर्ण व्यक्ति माना जाता है।  नंदमहर धाम संभवतः नंद बाबा के साथ संबंध हैं, जिन्हें भगवान कृष्ण के पालक पिता के रूप में जाना जाता है। कृष्ण के प्रारंभिक जीवन में उनकी भूमिका कई कहानियों और मान्यताओं के केंद्र में है।  मंदिर परिसर वासुदेव जी से भी जुड़ा हो सकता है, जो भगवान कृष्ण के जैविक पिता हैं। भगवान कृष्ण के प्रति उनकी भक्ति और प्रेम कृष्ण कथा के केंद्र में हैं।   अपने गहन आध्यात्मिक संबंधों के कारण, नंदमहर धाम धार्मिक तीर्थयात्राओं के लिए एक महत्वपूर्ण गंतव्य के रूप में काम कर सकता है। भक्त आशीर्वाद लेने और अपने सम्मान का भुगतान करने के लिए विभिन्न स्थानों से यात्रा कर सकते हैं।  इस स्थल को क्षेत्र की सांस्कृतिक विरासत का एक अभिन्न अंग माना जा सकता है, जो समुदाय की धार्मिक प्रथाओं और मान्यताओं को दर्शाता है। मंदिर परिसर विशिष्ट वास्तुकला शैलियों को प्रदर्शित कर सकता है जो हिंदू मंदिरों में आम हैं, जैसे कि जटिल नक्काशी, शिखर और एक गर्भगृह जहां देवताओं को स्थापित किया गया है।   नंदमहर धाम विभिन्न त्योहारों और समारोहों की मेजबानी कर सकता है, विशेष रूप से भगवान से संबंधित कृष्ण और उनकी दिव्य लीलाएं।   कई मंदिरों की तरह, यह एक सामुदायिक केंद्र के रूप में काम कर सकता है जहां लोग विभिन्न धार्मिक और सांस्कृतिक गतिविधियों के लिए एक साथ आते हैं।   इसके धार्मिक और सांस्कृतिक महत्व को देखते हुए, नंदमहर धाम क्षेत्र के आध्यात्मिक और ऐतिहासिक पहलुओं का अनुभव करने में रुचि रखने वाले पर्यटकों को भी आकर्षित कर सकता है। ऐसे महत्वपूर्ण धार्मिक स्थल की उपस्थिति के आर्थिक प्रभाव हो सकते हैं, आगंतुकों की जरूरतों को पूरा करने के लिए क्षेत्र के चारों ओर व्यवसाय और सेवाएं विकसित हो सकती हैं और तीर्थयात्री.',
        'descriptionTwo': '         मलिक मोहम्मद जायसी एक प्रसिद्ध सूफी संत थे जो मध्ययुगीन भारत के दौरान रहते थे। वह अमेठी जिले के जयस परिवार से थे, जो उनकी क्षेत्रीय संबद्धता को दर्शाता है।  मलिक मोहम्मद जायसी अपनी आध्यात्मिकता के लिए जाने जाते थे और रहस्यवादी अभ्यास, उन्हें सूफी परंपरा के साथ जोड़ते हैं।  सूफी संत इस्लाम में पूजनीय व्यक्ति हैं जो आध्यात्मिक अनुभवों, आंतरिक परिवर्तन और ईश्वर के साथ गहरे संबंध पर जोर देते हैं। मलिक में से एक मोहम्मद जायसी की महत्वपूर्ण रचना "अखाड़ी कलाम" है। "आखरी कलाम" आम तौर पर किसी व्यक्ति के अंतिम शब्दों या अंतिम कथन को संदर्भित करता है, जिससे पता चलता है कि इस काम में गहन आध्यात्मिक अंतर्दृष्टि या प्रतिबिंब शामिल हो सकते हैं। एक और प्रसिद्ध उनकी रचना का श्रेय "पद्मावत" को दिया जाता है। "पद्मावत" एक महाकाव्य कविता है जो मेवाड़ की रानी रानी पद्मिनी और उनकी पौराणिक सुंदरता की कहानी बताती है। यह कार्य सांस्कृतिक और ऐतिहासिक महत्व रखता है।  मलिक मोहम्मद जायसी के साहित्यिक और आध्यात्मिक योगदान ने भारत के सांस्कृतिक और धार्मिक परिदृश्य में एक स्थायी विरासत छोड़ी है। जिले से जुड़ा होना अमेठी के मलिक मोहम्मद जायसी के स्थानीय अनुयायी और प्रभाव होने की संभावना थी, खासकर उस क्षेत्र के लोगों के बीच। , भक्ति, और ईश्वर के साथ गहरे संबंध की खोज।  उनके कार्यों, विशेष रूप से "पद्मावत" का साहित्य और सांस्कृतिक आख्यानों पर महत्वपूर्ण प्रभाव पड़ा है, और उन्हें संदर्भित, अनुकूलित या सम्मानित किया गया हो सकता है लेखकों और कलाकारों की अगली पीढ़ियों द्वारा। मलिक मोहम्मद जायसी भारत में महत्वपूर्ण सांस्कृतिक और सामाजिक परिवर्तन की अवधि के दौरान रहते थे, और उनके काम उनके समय के मूल्यों, विश्वासों और कलात्मक अभिव्यक्तियों में अंतर्दृष्टि प्रदान करते हैं।  सूफीवाद के साथ उनका जुड़ाव धार्मिक बहुलवाद को अपनाने का सुझाव देता है, क्योंकि सूफीवाद अक्सर धार्मिक सीमाओं से परे आध्यात्मिकता की सार्वभौमिक प्रकृति और ईश्वर की एकता पर जोर देता है।',
      }
    }
  };

  void _onSubmit() {
    if (selectedDistrict != null && selectedConstituency != null) {
      String key = '$selectedDistrict-$selectedConstituency';
      Map<String, dynamic>? details = districtConstituencyDetails[key];

      if (details != null) {
        String title = details['content']['title'];
        String imageTitle = details['content']['imageTitle'];
        String heading = details['content']['heading'];
        String about = details['content']['about'];
        String description = details['content']['description'];
        String imagePath = details['content']['imagePath'];
        String imagePathOne = details['content']['imagePathOne'];
        String imagePathTwo = details['content']['imagePathTwo'];
        String descriptionOne = details['content']['descriptionOne'];
        String descriptionTwo = details['content']['descriptionTwo'];

        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ConstituencyResult(
              title: title,
              description: description,
              imagePath: imagePath,
              imagePathOne: imagePathOne,
              imagePathTwo: imagePathTwo,
              descriptionOne: descriptionOne,
              descriptionTwo: descriptionTwo,
              about: about,
              heading: heading,
              imageTitle: imageTitle,
            ),
          ),
        );
      }
    }
  }

  void _onDistrictChanged(String? value) {
    setState(() {
      selectedDistrict = value;
      selectedConstituency = null; // Reset constituency when district changes
    });
  }

  void _onConstituencyChanged(String? value) {
    setState(() {
      selectedConstituency = value;
    });
  }

  Locale _selectedLocale = const Locale('en', 'US'); // Default language
  String _greetingText = 'भारतीय राष्ट्रीय कांग्रेस';
  String _partytitleText = 'भारतीय राष्ट्रीय कांग्रेस';


  String _PartyConstituencyText = 'निर्वाचन क्षेत्र का अवलोकन';

  String _partySelectDistrictText = 'जिला चुनें';
  String _partySelectConstituencyText = 'निर्वाचन क्षेत्र का चयन करें';
  String _partySubmitText = 'जमा करना';

  void _changeLanguage(Locale newLocale) {
    setState(() {
      _selectedLocale = newLocale;

      _updatePartyTitleText();
      _updateConstituencyTitleText();

      _updateSelectDistrictText();
      _updateSelectConstituencyText();
      _updateSubmitText();

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

  void _updateConstituencyTitleText() {
    switch (_selectedLocale.languageCode) {
      case 'hi':
        _PartyConstituencyText = 'निर्वाचन क्षेत्र का अवलोकन';
        break;
      case 'en':
        _PartyConstituencyText = 'Contituency Overview';
        break;
      default:
        _PartyConstituencyText = 'निर्वाचन क्षेत्र का अवलोकन';
    }
  }

  void _updateSelectDistrictText() {
    switch (_selectedLocale.languageCode) {
      case 'hi':
        _partySelectDistrictText = 'जिला चुनें';
        break;
      case 'en':
        _partySelectDistrictText = 'Select District ';
        break;
      default:
        _partySelectDistrictText = 'जिला चुनें';
    }
  }

  void _updateSelectConstituencyText() {
    switch (_selectedLocale.languageCode) {
      case 'hi':
        _partySelectConstituencyText = 'निर्वाचन क्षेत्र का चयन करें';
        break;
      case 'en':
        _partySelectConstituencyText = 'Select Constituency';
        break;
      default:
        _partySelectConstituencyText = 'निर्वाचन क्षेत्र का चयन करें';
    }
  }

  void _updateSubmitText() {
    switch (_selectedLocale.languageCode) {
      case 'hi':
        _partySubmitText = 'जमा करना';
        break;
      case 'en':
        _partySubmitText = 'Submit';
        break;
      default:
        _partySubmitText = 'जमा करना';
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: Text(_PartyConstituencyText,),
        backgroundColor: Colors.blue[300],
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
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Column(
            children: [
              SizedBox(height: 10,),
              Container(
                color: Colors.blue[300],
                height: 300,
                child: Image.asset(
                  'assets/Party_Images/amethimap.png',
                  fit: BoxFit.fitHeight,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RichText(
                  textAlign: TextAlign.start,
                  text: const TextSpan(children: <TextSpan>[
                    TextSpan(
                      text: "",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    TextSpan(text: "")
                  ]),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                DropdownButtonFormField(
                  decoration: const InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.pinkAccent,
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.blue,
                    border: OutlineInputBorder(),
                  ),
                  value: selectedDistrict,
                  items: districts.map((district) {
                    return DropdownMenuItem(
                      value: district,
                      child: Text(district),
                    );
                  }).toList(),
                  onChanged: _onDistrictChanged,
                  hint:  Text(_partySelectDistrictText),
                ),
                const SizedBox(height: 16.0),
                DropdownButtonFormField<String>(
                  decoration: const InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.orange,
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.blue,
                    border: OutlineInputBorder(),
                  ),
                  value: selectedConstituency,
                  items: (selectedDistrict != null &&
                          constituencies.containsKey(selectedDistrict))
                      ? constituencies[selectedDistrict]!
                          .map<DropdownMenuItem<String>>((constituency) {
                          return DropdownMenuItem<String>(
                            value: constituency,
                            child: Text(constituency),
                          );
                        }).toList()
                      : [],
                  onChanged: _onConstituencyChanged,
                  hint:  Text(_partySelectConstituencyText),
                ),
                const SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: _onSubmit,
                  child: Text(_partySubmitText),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
