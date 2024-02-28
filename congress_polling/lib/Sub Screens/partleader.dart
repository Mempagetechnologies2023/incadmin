import 'package:flutter/material.dart';

import '../pages/resultpage.dart';


class PartyLeader extends StatefulWidget {
  const PartyLeader({super.key});

  @override
  State<PartyLeader> createState() => _PartyLeaderState();
}

class _PartyLeaderState extends State<PartyLeader> {
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
        'title': 'राहुल गांधी (Rahul Gandhi)',
        'description': 'राहुल गांधी (Rahul Gandhi) - राहुल गांधी जीवनी राहुल गांधी का जन्म 19 जून 1970 को राजीव गांधी और सोनिया गांधी के घर हुआ था। वह वर्तमान में भारतीय राष्ट्रीय कांग्रेस के अध्यक्ष की जिम्मेदारी संभाल रहे हैं। राहुल गांधी के पास भारतीय युवा कांग्रेस और भारतीय राष्ट्रीय छात्र संघ के अध्यक्ष के रूप में जिम्मेदारी के अन्य महत्वपूर्ण पद भी हैं। वह पहले अखिल भारतीय कांग्रेस कमेटी के महासचिव का पद भी संभाल चुके हैं। राहुल गांधी 2004 से लोकसभा में संसद सदस्य के रूप में उत्तर प्रदेश के अमेठी संसदीय क्षेत्र का प्रतिनिधित्व करते हैं। 16 दिसंबर, 2017 को अपनी पार्टी के अग्रदूत बनने से पहले राहुल गांधी जनवरी 2013 में भारतीय राष्ट्रीय कांग्रेस के उपाध्यक्ष बने। वह पहले गृह मामलों और मानव संसाधन विकास पर संसदीय स्थायी समिति और नागरिक उड्डयन मंत्रालय की सलाहकार समिति के सदस्य भी रहे हैं। वह वर्तमान में विदेश मामलों की संसदीय स्थायी समिति में कार्यरत हैं। राहुल गांधी राजीव गांधी चैरिटेबल ट्रस्ट और राजीव गांधी फाउंडेशन के ट्रस्टी भी हैं।',
        'description2': 'राहुल गांधी का प्रारंभिक जीवन राहुल गांधी के शुरुआती दिनों में सार्वजनिक क्षेत्र में कोई बड़ा प्रदर्शन नहीं देखा गया। राहुल गांधी अपने परिवार की निगरानी में बड़े हुए, विशेषकर अपनी मां सोनिया गांधी की त्रुटिहीन देखभाल में। एक लड़के के रूप में, राहुल गांधी ने अपनी शिक्षा पूरी करने पर ध्यान केंद्रित किया। अपने हाई स्कूल पाठ्यक्रम के पूरा होने के बाद, वह एक जीवंत शैक्षिक अनुभव प्राप्त करने के लिए विदेश चले गए। ज्ञान की उनकी खोज के बीच, उनके लिए सुरक्षा खतरों के कई उदाहरण थे, खासकर उनके पिता राजीव गांधी की अमानवीय हत्या के बाद, जो उस समय भारत के प्रधान मंत्री के रूप में कार्यरत थे। अपनी उच्च शिक्षा पूरी करने के बाद, राहुल गांधी ने लंदन में एक प्रबंधन परामर्श फर्म, मॉनिटर ग्रुप के साथ अपने पेशेवर व्यवसाय की शुरुआत की। बाद में वह भारत लौट आए और मुंबई में बैकऑप्स सर्विसेज प्राइवेट लिमिटेड नामक एक प्रौद्योगिकी आउटसोर्सिंग फर्म की स्थापना की, जहां वह निदेशकों में से एक थे।',
        'description3': 'राहुल गांधी की शिक्षा का अवलोकन राहुल गांधी के बचपन के वर्ष राष्ट्रीय राजधानी दिल्ली और देहरादून की शांत पहाड़ियों में बीते। नई दिल्ली के सेंट कोलंबस स्कूल में पढ़ने के बाद, राहुल गांधी ने 1981 से 1983 तक उत्तराखंड राज्य के देहरादून के दून स्कूल में दाखिला लिया। राहुल गांधी के पिता, राजीव गांधी ने तब राजनीति में प्रवेश किया था और 31 दिसंबर को प्रधान मंत्री बने थे अक्टूबर, 1984 में श्रीमती की हत्या के बाद। इंदिरा गांधी। स्वर्गीय इंदिरा गांधी के परिवार को लगातार और कई सुरक्षा खतरों का सामना करने के कारण, राहुल गांधी और उनकी बहन प्रियंका गांधी दोनों को बाद में घर पर ही स्कूली शिक्षा मिली। संयुक्त राज्य अमेरिका में हार्वर्ड विश्वविद्यालय में जाने से पहले राहुल गांधी ने खुद को दिल्ली विश्वविद्यालय के सेंट स्टीफंस कॉलेज में स्नातक की पढ़ाई करते देखा। 1991 में, देश ने भारत के तत्कालीन प्रधान मंत्री राजीव गांधी की दर्दनाक हत्या देखी, जिनकी एक चुनावी रैली में जान चली गई। अपने पिता की मृत्यु के बाद सुरक्षा खतरों के कारण, राहुल गांधी फ्लोरिडा के रोलिंस कॉलेज में स्थानांतरित हो गए, जहां उन्होंने 1994 में स्नातक की डिग्री हासिल की। ​​उन्होंने ट्रिनिटी कॉलेज, कैम्ब्रिज से एम.फिल की पढ़ाई पूरी की। 1995.',
        'imagePath': 'assets/Leaders/rahul.jpg',
      },
    },
  };


  void _onSubmit() {
    if (selectedDistrict != null && selectedConstituency != null) {
      String key = '$selectedDistrict-$selectedConstituency';
      Map<String, dynamic>? details = districtConstituencyDetails[key];

      if (details != null) {
        String title = details['content']['title'];
        String description = details['content']['description'];
        String description2 = details['content']['description2'];
        String description3 = details['content']['description3'];
        String imagePath = details['content']['imagePath'];

        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ResultPage(
              title: title,
              description: description,
              description2: description2,
              description3: description3,
              imagePath: imagePath,
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
  String _partyFulltitleText = 'भारतीय राष्ट्रीय कांग्रेस (आईएनसी), बोलचाल की भाषा में कांग्रेस पार्टी या केवल कांग्रेस, भारत में व्यापक जड़ों वाली एक राजनीतिक पार्टी है। 1885 में स्थापित, यह एशिया और अफ्रीका में ब्रिटिश साम्राज्य में उभरने वाला पहला आधुनिक राष्ट्रवादी आंदोलन था। 19वीं सदी के अंत से, और विशेष रूप से 1920 के बाद, महात्मा गांधी के नेतृत्व में, कांग्रेस भारतीय स्वतंत्रता आंदोलन की प्रमुख नेता बन गई। कांग्रेस ने भारत को यूनाइटेड किंगडम से आजादी दिलाई, और अन्य उपनिवेशवाद-विरोधी राष्ट्रवादी आंदोलनों को महत्वपूर्ण रूप से प्रभावित किया। ब्रिटिश साम्राज्य में.\n            भारतीय जनता पार्टी के साथ-साथ कांग्रेस भारत की दो प्रमुख राजनीतिक पार्टियों में से एक है। यह एक "बड़ी तम्बू" पार्टी है जिसका मंच आम तौर पर भारतीय राजनीति के केंद्र में माना जाता है। पार्टी ने अपना पहला सत्र 1885 में बॉम्बे में आयोजित किया था जहां डब्ल्यू.सी. बोनर्जी ने इसकी अध्यक्षता की। 1947 में भारतीय स्वतंत्रता के बाद, कांग्रेस एक लोकप्रिय और धर्मनिरपेक्ष पार्टी के रूप में उभरी और अगले 20 वर्षों तक भारतीय राजनीति पर हावी रही। पार्टी के पहले प्रधान मंत्री, पंडित जवाहरलाल नेहरू ने योजना आयोग बनाकर, पंचवर्षीय योजनाएँ शुरू करके, मिश्रित अर्थव्यवस्था लागू करके और एक धर्मनिरपेक्ष राज्य की स्थापना करके समाजवादी नीतियों का समर्थन करने के लिए कांग्रेस का नेतृत्व किया। नेहरू की मृत्यु और लाल बहादुर शास्त्री के छोटे कार्यकाल के बाद इंदिरा गांधी पार्टी की नेता बनीं। आजादी के बाद से 17 आम चुनावों में, इसने सात मौकों पर पूर्ण बहुमत हासिल किया है और 54 वर्षों से अधिक समय तक केंद्र सरकार का नेतृत्व करते हुए तीन बार सत्तारूढ़ गठबंधन का नेतृत्व किया है। कांग्रेस पार्टी से छह प्रधान मंत्री हुए हैं, पहले जवाहरलाल नेहरू (1947-1964), और सबसे हाल के मनमोहन सिंह (2004-2014) हैं।';

  String _PartyLeaderText = 'पार्टी लीडर';

  String _partySelectDistrictText = 'जिला चुनें';
  String _partySelectConstituencyText = 'निर्वाचन क्षेत्र का चयन करें';
  String _partySubmitText = 'जमा करना';

  void _changeLanguage(Locale newLocale) {
    setState(() {
      _selectedLocale = newLocale;

      _updatePartyTitleText();
      _updatePartyFullTitleText();
      _updatePartyLeaderTitleText();

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
  void _updatePartyFullTitleText() {
    switch (_selectedLocale.languageCode) {
      case 'hi':
        _partyFulltitleText = 'भारतीय राष्ट्रीय कांग्रेस (आईएनसी), बोलचाल की भाषा में कांग्रेस पार्टी या केवल कांग्रेस, भारत में व्यापक जड़ों वाली एक राजनीतिक पार्टी है। 1885 में स्थापित, यह एशिया और अफ्रीका में ब्रिटिश साम्राज्य में उभरने वाला पहला आधुनिक राष्ट्रवादी आंदोलन था। 19वीं सदी के अंत से, और विशेष रूप से 1920 के बाद, महात्मा गांधी के नेतृत्व में, कांग्रेस भारतीय स्वतंत्रता आंदोलन की प्रमुख नेता बन गई। कांग्रेस ने भारत को यूनाइटेड किंगडम से आजादी दिलाई, और अन्य उपनिवेशवाद-विरोधी राष्ट्रवादी आंदोलनों को महत्वपूर्ण रूप से प्रभावित किया। ब्रिटिश साम्राज्य में.\n           भारतीय जनता पार्टी के साथ-साथ कांग्रेस भारत की दो प्रमुख राजनीतिक पार्टियों में से एक है। यह एक "बड़ी तम्बू" पार्टी है जिसका मंच आम तौर पर भारतीय राजनीति के केंद्र में माना जाता है। पार्टी ने अपना पहला सत्र 1885 में बॉम्बे में आयोजित किया था जहां डब्ल्यू.सी. बोनर्जी ने इसकी अध्यक्षता की। 1947 में भारतीय स्वतंत्रता के बाद, कांग्रेस एक लोकप्रिय और धर्मनिरपेक्ष पार्टी के रूप में उभरी और अगले 20 वर्षों तक भारतीय राजनीति पर हावी रही। पार्टी के पहले प्रधान मंत्री, पंडित जवाहरलाल नेहरू ने योजना आयोग बनाकर, पंचवर्षीय योजनाएँ शुरू करके, मिश्रित अर्थव्यवस्था लागू करके और एक धर्मनिरपेक्ष राज्य की स्थापना करके समाजवादी नीतियों का समर्थन करने के लिए कांग्रेस का नेतृत्व किया। नेहरू की मृत्यु और लाल बहादुर शास्त्री के छोटे कार्यकाल के बाद इंदिरा गांधी पार्टी की नेता बनीं। आजादी के बाद से 17 आम चुनावों में, इसने सात मौकों पर पूर्ण बहुमत हासिल किया है और 54 वर्षों से अधिक समय तक केंद्र सरकार का नेतृत्व करते हुए तीन बार सत्तारूढ़ गठबंधन का नेतृत्व किया है। कांग्रेस पार्टी से छह प्रधान मंत्री हुए हैं, पहले जवाहरलाल नेहरू (1947-1964), और सबसे हाल के मनमोहन सिंह (2004-2014) हैं।';
        break;
      case 'en':
        _partyFulltitleText = 'The Indian National Congress (INC), colloquially the Congress Party or simply the Congress, is a political party in India with widespread roots. Founded in 1885, it was the first modern nationalist movement to emerge in the British Empire in Asia and Africa. From the late 19th century, and especially after 1920, under the leadership of Mahatma Gandhi, the Congress became the principal leader of the Indian independence movement.The Congress led India to independence from the United Kingdom,and significantly influenced other anti-colonial nationalist movements in the British Empire. \n      Congress is one of the two major political parties in India, alongside the Bharatiya Janata Party.It is a "big tent" party whose platform is generally considered to lie in the centre of Indian politics.The Party held its first session in 1885 in Bombay where W.C. Bonerjee presided over it.After Indian independence in 1947, Congress emerged as a catch-all and secular party, dominating Indian politics for the next 20 years. The partys first Prime Minister, Pandit Jawaharlal Nehru, led the Congress to support socialist policies by creating the Planning Commission, introducing Five-Year Plans, implementing a mixed economy, and establishing a secular state. After Nehrus death and the short tenure of Lal Bahadur Shastri, Indira Gandhi became the leader of the party. In the 17 general elections since independence, it has won an outright majority on seven occasions and has led the ruling coalition a further three times, heading the central government for more than 54 years. There have been six Prime Ministers from the Congress party, the first being Jawaharlal Nehru (1947–1964), and the most recent being Manmohan Singh (2004–2014).';
        break;
      default:
        _partyFulltitleText = 'भारतीय राष्ट्रीय कांग्रेस (आईएनसी), बोलचाल की भाषा में कांग्रेस पार्टी या केवल कांग्रेस, भारत में व्यापक जड़ों वाली एक राजनीतिक पार्टी है। 1885 में स्थापित, यह एशिया और अफ्रीका में ब्रिटिश साम्राज्य में उभरने वाला पहला आधुनिक राष्ट्रवादी आंदोलन था। 19वीं सदी के अंत से, और विशेष रूप से 1920 के बाद, महात्मा गांधी के नेतृत्व में, कांग्रेस भारतीय स्वतंत्रता आंदोलन की प्रमुख नेता बन गई। कांग्रेस ने भारत को यूनाइटेड किंगडम से आजादी दिलाई, और अन्य उपनिवेशवाद-विरोधी राष्ट्रवादी आंदोलनों को महत्वपूर्ण रूप से प्रभावित किया। ब्रिटिश साम्राज्य में.\n           भारतीय जनता पार्टी के साथ-साथ कांग्रेस भारत की दो प्रमुख राजनीतिक पार्टियों में से एक है। यह एक "बड़ी तम्बू" पार्टी है जिसका मंच आम तौर पर भारतीय राजनीति के केंद्र में माना जाता है। पार्टी ने अपना पहला सत्र 1885 में बॉम्बे में आयोजित किया था जहां डब्ल्यू.सी. बोनर्जी ने इसकी अध्यक्षता की। 1947 में भारतीय स्वतंत्रता के बाद, कांग्रेस एक लोकप्रिय और धर्मनिरपेक्ष पार्टी के रूप में उभरी और अगले 20 वर्षों तक भारतीय राजनीति पर हावी रही। पार्टी के पहले प्रधान मंत्री, पंडित जवाहरलाल नेहरू ने योजना आयोग बनाकर, पंचवर्षीय योजनाएँ शुरू करके, मिश्रित अर्थव्यवस्था लागू करके और एक धर्मनिरपेक्ष राज्य की स्थापना करके समाजवादी नीतियों का समर्थन करने के लिए कांग्रेस का नेतृत्व किया। नेहरू की मृत्यु और लाल बहादुर शास्त्री के छोटे कार्यकाल के बाद इंदिरा गांधी पार्टी की नेता बनीं। आजादी के बाद से 17 आम चुनावों में, इसने सात मौकों पर पूर्ण बहुमत हासिल किया है और 54 वर्षों से अधिक समय तक केंद्र सरकार का नेतृत्व करते हुए तीन बार सत्तारूढ़ गठबंधन का नेतृत्व किया है। कांग्रेस पार्टी से छह प्रधान मंत्री हुए हैं, पहले जवाहरलाल नेहरू (1947-1964), और सबसे हाल के मनमोहन सिंह (2004-2014) हैं।';
    }
  }

  void _updatePartyLeaderTitleText() {
    switch (_selectedLocale.languageCode) {
      case 'hi':
        _PartyLeaderText = 'पार्टी लीडर';
        break;
      case 'en':
        _PartyLeaderText = 'Party Laeder';
        break;
      default:
        _PartyLeaderText = 'पार्टी लीडर';
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
        backgroundColor: Colors.blue[300],
        title:  Text(_PartyLeaderText,),
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
        padding: const EdgeInsets.all(5.0),
        scrollDirection: Axis.vertical,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  // height: 280.0,
                  // width: 280.0,
                  child: Image.asset('assets/Leaders/rahulleader.jpg')),
              RichText(
                textAlign: TextAlign.center,
                text:  TextSpan(children: <TextSpan>[
                  TextSpan(
                    text: _partytitleText,
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontStyle: FontStyle.normal),
                  ),
                ]),
              ),
              RichText(
                textAlign: TextAlign.start,
                text:  TextSpan(children: <TextSpan>[
                  TextSpan(
                    text: _partyFulltitleText,style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontStyle: FontStyle.normal,
                    wordSpacing: 2.5,
                    letterSpacing: 0.5,
                  ),
                  ),
                ]),
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
          Column(
            children: [
              DropdownButtonFormField(
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
                value: selectedConstituency,
                items: (selectedDistrict != null && constituencies.containsKey(selectedDistrict))
                    ? constituencies[selectedDistrict]!.map<DropdownMenuItem<String>>((constituency) {
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
        ],
      ),
    );
  }
}
