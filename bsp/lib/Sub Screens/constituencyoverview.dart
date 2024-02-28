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
    'ASIFABAD',
    'KARIMNAGAR',
    'SIDDIPET',
  ];
  Map<String, List<String>> constituencies = {
    'ASIFABAD': ['Sirpur'],
    'KARIMNAGAR': ['Huzurabad', 'Sircilla'],
    'SIDDIPET': ['Dubbak', 'Gajwel', 'Husnabad', 'Siddipet'],
  };

  Map<String, Map<String, Map<String, String>>> districtConstituencyDetails = {
    'ASIFABAD-Sirpur': {
      'content': {
        'title': 'Sirpur',
        'imageTitle': 'assets/constituencyoverview/sirpur3.jpg',
        'heading': 'About:',
        'about':
            'Sirpur-Kaghaznagar\n\n              is a town and a municipality in Komaram Bheem Asifabad district in the state of Telangana in India. It is located around 16 km away from Sirpur (T). The town derives its name from the paper factory established during the times of Nizams rule. As of 2011 India census, the town of Kagaznagar had a population of 66,293, with 33,124 males, and 33,169 females. There were a total of 5,576 children between the ages of 0 and 6 and 15,712 inhabitants were classified as illiterate. The town has a unique blend of people settled from different parts of India. Apart from Telugu and Urdu and Gondi, Marathi is also widely understood due to the towns proximity to Maharashtra. Bengali language is widely spoken in Easgaon village owing to settlement of Bengali refugees. The literacy rate stood at 73.07 percent.',
        'description':
            'Sapthagunda or SapthalaGundam Mitte or seven Waterfalls\n\n              are are located on a local stream in Sirpur (U, Komaram Bheem Asifabad district, Telangana, India. \n This area is also famous for the dense Mangi forests where deforestation has taken place on a comparatively lesser scale. \n      Proper infrastructure at Sapthagundam can woo nature enthusiasts \n     Accessibility Of the seven waterfalls in Sirpur (U), two can be classified as the most beautiful spots and are located in close proximity. These are situated about 20 km from Jainoor mandal headquarters and can be accessed from either Lingapur or Pittaguda villages. In the absence of a proper road, a distance of about 4 km in the forest has to be trekked. A road and accommodation for tourists at these spots could arouse the interest of nature enthusiasts. \n       Kankaigundam is located on the Kadem river in Bazarhatnoor mandal. A 3-km walk in the wilderness is inevitable to reach this spot after travelling to Balhanpur in Bazarhatnoor from Ichoda mandal headquarters on the NH 7. \n      The Gadadigundam is another interesting spot on the Kadem river in Neredigonda mandal and can be accessed from Tarnam village from where a walk for about 4 km is needed to reach the waterfall. These two waterfalls on Kadem river dry up in the summer months. While water cascades from a lesser height at most of the seasonal falls, one waterfall cascades from a height of about 100 ft. \n        September to February is the best time to visit this sport as the hillock resembles Kashmir. There are several hillocks there ideal for trekking and hiking.',
        'imagePath': 'assets/constituencyoverview/sirpur5.jpg',
        'imagePathOne': 'assets/constituencyoverview/sirpur6.jpg',
        'imagePathTwo': 'assets/constituencyoverview/sirpur7.jpg',
        'descriptionOne':
            'Sirpur Paper Mills Limited (SPM)\n\n        is an integrated pulp and paper mill situated at Kagaznagar in Komaram Bheem district, Telangana. JK Paper Ltd acquired Sirpur Paper Mills in August 2018. \n       Sirpur Paper Mills Ltd was established in the erstwhile Hyderabad State in 1938 by the Nizam of Hyderabad Mir Osman Ali Khan, with actual production beginning in 1942. This makes it one of the oldest paper mills in the country. In the 1950s, the Birla family group of industries took over the mill, and it was later transferred to the Poddars. It was owned by R. K. Poddar at the time of its closure. \n         At the time of the closure, the mill employed about 3000 workers. The management team cited increasing raw material costs and unavailability of reliable power as the major reasons that impacted the profitability of the plant. Production at the mill had been shut down from September 2014 to August 2018.',
        'descriptionTwo':
            '63 feet height tallest statue of Lord Hanuman\n\n           is located at Sirpur Kaghaznagar (SKZR) twin towns, belongs to Adilabad district in the Indian state of Telangana. It is situated around 160 kms west from the district head quarters Adilabad, rests on the banks of river Wardha. Basically, Sirpur is a village located in Sirpur (T) mandal of Kaghaznagar revenue division. The Sirpur Fort built in 9th century is a major tourist attraction. It is said that this is the biggest idol of Lord Hanuman in the district area. God Hanuman here is holding mace (gada) in left hand and giving blessings in abhaya hasta mudra to his devotees. One sindoor colour replica small vigraha is found in front of big Hanuman statue. The modern town grew around the fort. It is notable for Sirpur Paper Mills (SPM), one of the biggest paper mills in India and hence the name Sirpur Kagaznagar. Pola is a bull-worshipping festival celebrated by farmers mainly in Telangana and people who share the border with Maharashtra. On the day of Pola, the farmers decorate and worship their bulls. Pola falls on the day of the Pithori Amavasya (the new moon day) in the month of Shravan (usually in August). Puran Poli, karanji and curry with five vegetables are the main dishes associated with this festival. Dussehra (Vijayadashami) and Bathukamma festivals are also celebrated here with great enthusiasm by locals.',
      }
    },
    'SIDDIPET-Siddipet': {
      'content': {
        'title': 'SIDDIPET',
        'imageTitle': 'assets/images/',
        'heading': 'About:',
        'about':
            'Siddipet,a town in the Siddipet District, is renowned for its ancient religious attractions like temples mosques and churches as well as historical monuments like Lal Kaman and Burj. The Yerra Cheruvu and Komati Cheruvu, tributaries of the Manjira River, flow through the region.Siddipet district is carved out of erstwhile Medak district with annexation of some parts ofKarimnagar and Warangal districts. The district shares boundaries with Karimnagar, Sircilla, Medak,Medchal, Hanamkonda, Yadadri, Kamareddy, Jangaon districts.The district comprises of 26 mandals and 3 revenue divisions . The district headquarters is locatedat Siddipet town. The Govt of Telangana has decided to set up a police commissionerate for thetown.',
        'description': '',
        'imagePath': 'assets/images/kondapochammasagar.jpg',
        'imagePathOne': 'assets/images/srilakshminarasimhaswamytemple.jpg',
        'imagePathTwo': 'assets/images/srimallikarjunaswamydevasthanam.jpg',
        'descriptionOne': '',
        'descriptionTwo': '',
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      appBar: AppBar(
        title: Text('ConstituencyOverview',style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue[900],
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                color: Colors.blue[700],
                height: 450,
                child: Image.asset(
                  'assets/bspparty/bspabout.jpg',
                  fit: BoxFit.fill,
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
                  hint: const Text('Select District'),
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
                  hint: const Text('Select Constituency'),
                ),
                const SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: _onSubmit,
                  child: Text('Submit'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
