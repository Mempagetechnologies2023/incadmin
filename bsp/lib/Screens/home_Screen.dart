import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:url_launcher/url_launcher.dart';

import 'Social_media.dart';


final Uri _urlhistory =
Uri.parse('https://www.bsp4ts.org/about');

final Uri _urlwomensbarosa =
Uri.parse('https://www.bsp4ts.org/women-manifesto');

final Uri _urlyuvajanabarosa =
Uri.parse('https://www.bsp4ts.org/youth');

final Uri _urlinitiatives =
Uri.parse('https://www.bsp4ts.org/initiatives');

final Uri _urlachievements = Uri.parse('https://www.bsp4ts.org/achievements-of-bsp');

final Uri _urlofficebearers = Uri.parse('https://www.bsp4ts.org/officebearers');

final Uri _urljoinrsp = Uri.parse('https://www.bsp4ts.org/join');

final Uri _urlcadreform = Uri.parse('https://www.bsp4ts.org/cadreform');

final Uri _urlgallary =
Uri.parse('https://www.bsp4ts.org/gallery');

final Uri _urlblogs = Uri.parse(
    'https://www.bsp4ts.org/blog');

final Uri _urlcontactus = Uri.parse('https://www.bsp4ts.org/contactus');




class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List imageList = [
    {"id": 1, "image_path": 'assets/bspmanifestopics/Image1.jpg'},
    {"id": 2, "image_path": 'assets/bspmanifestopics/Image2.jpg'},
    {"id": 3, "image_path": 'assets/bspmanifestopics/Image3.jpg'},
    {"id": 4, "image_path": 'assets/bspmanifestopics/Image4.jpg'},
    {"id": 5, "image_path": 'assets/bspmanifestopics/Image5.jpg'},
    {"id": 6, "image_path": 'assets/bspmanifestopics/Image6.jpg'},
    {"id": 7, "image_path": 'assets/bspmanifestopics/Image7.jpg'},
    {"id": 8, "image_path": 'assets/bspmanifestopics/Image8.jpg'},
    {"id": 9, "image_path": 'assets/bspmanifestopics/Image9.jpg'},
    {"id": 10, "image_path": 'assets/bspmanifestopics/Image10.jpg'},
    {"id": 11, "image_path": 'assets/bspmanifestopics/Image11.jpg'},
    {"id": 12, "image_path": 'assets/bspmanifestopics/Image12.jpg'},
    {"id": 13, "image_path": 'assets/bspmanifestopics/Image13.jpg'},
    {"id": 14, "image_path": 'assets/bspmanifestopics/Image14.jpg'},
    {"id": 15, "image_path": 'assets/bspmanifestopics/Image15.jpg'},
    {"id": 16, "image_path": 'assets/bspmanifestopics/Image16.jpg'},
    {"id": 17, "image_path": 'assets/bspmanifestopics/Image17.jpg'},
    {"id": 18, "image_path": 'assets/bspmanifestopics/Image18.jpg'},
    {"id": 19, "image_path": 'assets/bspmanifestopics/Image19.jpg'},
    {"id": 20, "image_path": 'assets/bspmanifestopics/Image20.jpg'},
    {"id": 21, "image_path": 'assets/bspmanifestopics/Image21.jpg'},
    {"id": 22, "image_path": 'assets/bspmanifestopics/Image22.jpg'},
    {"id": 23, "image_path": 'assets/bspmanifestopics/Image23.jpg'},
    {"id": 24, "image_path": 'assets/bspmanifestopics/Image24.jpg'},
    {"id": 25, "image_path": 'assets/bspmanifestopics/Image25.jpg'},
    {"id": 26, "image_path": 'assets/bspmanifestopics/Image26.jpg'},
    {"id": 27, "image_path": 'assets/bspmanifestopics/Image27.jpg'},
    {"id": 28, "image_path": 'assets/bspmanifestopics/Image28.jpg'},
    {"id": 29, "image_path": 'assets/bspmanifestopics/Image29.jpg'},
    {"id": 30, "image_path": 'assets/bspmanifestopics/Image30.jpg'},
    {"id": 31, "image_path": 'assets/bspmanifestopics/Image31.jpg'},
    {"id": 32, "image_path": 'assets/bspmanifestopics/Image32.jpg'},
    {"id": 33, "image_path": 'assets/bspmanifestopics/Image33.jpg'},
    {"id": 34, "image_path": 'assets/bspmanifestopics/Image34.jpg'},
    {"id": 35, "image_path": 'assets/bspmanifestopics/Image35.jpg'},
    {"id": 36, "image_path": 'assets/bspmanifestopics/Image36.jpg'},
    {"id": 37, "image_path": 'assets/bspmanifestopics/Image37.jpg'},
    {"id": 38, "image_path": 'assets/bspmanifestopics/Image38.jpg'},
    {"id": 39, "image_path": 'assets/bspmanifestopics/Image39.jpg'},
    {"id": 40, "image_path": 'assets/bspmanifestopics/Image40.jpg'},
    {"id": 41, "image_path": 'assets/bspmanifestopics/Image41.jpg'},
    {"id": 42, "image_path": 'assets/bspmanifestopics/Image42.jpg'},
    {"id": 43, "image_path": 'assets/bspmanifestopics/Image43.jpg'},
    {"id": 44, "image_path": 'assets/bspmanifestopics/Image44.jpg'},
    {"id": 45, "image_path": 'assets/bspmanifestopics/Image45.jpg'},
    {"id": 46, "image_path": 'assets/bspmanifestopics/Image46.jpg'},
    {"id": 47, "image_path": 'assets/bspmanifestopics/Image47.jpg'},
    {"id": 48, "image_path": 'assets/bspmanifestopics/Image48.jpg'},
    {"id": 49, "image_path": 'assets/bspmanifestopics/Image49.jpg'},
    {"id": 50, "image_path": 'assets/bspmanifestopics/Image50.jpg'},
    {"id": 51, "image_path": 'assets/bspmanifestopics/Image51.jpg'},
    {"id": 52, "image_path": 'assets/bspmanifestopics/Image52.jpg'},
    {"id": 53, "image_path": 'assets/bspmanifestopics/Image53.jpg'},
    {"id": 54, "image_path": 'assets/bspmanifestopics/Image54.jpg'},
    {"id": 55, "image_path": 'assets/bspmanifestopics/Image55.jpg'},
    {"id": 56, "image_path": 'assets/bspmanifestopics/Image56.jpg'},
    {"id": 57, "image_path": 'assets/bspmanifestopics/Image57.jpg'},
    {"id": 58, "image_path": 'assets/bspmanifestopics/Image58.jpg'},
    {"id": 59, "image_path": 'assets/bspmanifestopics/Image59.jpg'},
    {"id": 60, "image_path": 'assets/bspmanifestopics/Image60.jpg'},
    {"id": 61, "image_path": 'assets/bspmanifestopics/Image61.jpg'},



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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "route",
      home: Scaffold(
        backgroundColor: Colors.blue[900],
        appBar: AppBar(
          title: Text("Bahujan Samaj Party"),
          centerTitle: true,
          backgroundColor: Colors.blue[900],
          actions: [
            Container(
              // width: 125,
              child: Image.asset(
                "assets/bspparty/bsppartylogo.jpg",
              ),
            ),
          ],
        ),
        drawer: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Drawer(
            backgroundColor: Colors.blue,
            elevation: 10,
            child: SafeArea(
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    ExpansionTile(
                      title: Text("About The Party"),
                      leading: Icon(
                        Icons.flag_circle,
                        color: Colors.black,
                      ),
                      textColor: Colors.black, //add icon
                      childrenPadding: EdgeInsets.only(left: 60), //children padding
                      children: [
                        ListTile(
                          title: Text("History Of The Party"),
                          onTap: _launchUrlhistoryoftheparty,
                        ),
                        //more child menu
                      ],
                    ),
                    ExpansionTile(
                        title: Text("Manifesto"),
                        leading: Icon(Icons.person), //add icon
                        childrenPadding:
                        EdgeInsets.only(left: 60), //children padding
                        children: [
                          ListTile(
                            title: Text("Womens Barosa"),
                            onTap: _launchUrlwomensbarosa,
                          ),

                          ListTile(
                            title: Text("Yuvajana Barosa"),
                            onTap: _launchUrlyuvajanabarosa,
                          ), //more child menu
                        ],
                      ),

                    ExpansionTile(
                      title: Text("Initiatives"),
                      leading: Icon(Icons.person), //add icon
                      childrenPadding: EdgeInsets.only(left: 60), //children padding
                      children: [
                        ListTile(
                          title: Text("Initiatives"),
                          onTap: _launchUrlinitiatives,
                        ),
                      ],
                    ),

                    ExpansionTile(
                      title: Text("Achievements of BSP"),
                      leading: Icon(Icons.account_balance), //add icon
                      childrenPadding: EdgeInsets.only(left: 60), //children padding
                      children: [
                        ListTile(
                          title: Text("Achievements"),
                          onTap: _launchUrlachievements,
                        ),
                      ],
                    ),

                    ExpansionTile(
                      title: Text("Office Bearers"),
                      leading: Icon(Icons.person), //add icon
                      childrenPadding: EdgeInsets.only(left: 60), //children padding
                      children: [
                        ListTile(
                          title: Text('Office Bearers'),
                          onTap: _launchUrlofficebearers,
                        ),
                      ],
                    ),

                    ExpansionTile(
                      title: Text("JOIN RSP"),
                      leading: Icon(Icons.person), //add icon
                      childrenPadding: EdgeInsets.only(left: 60), //children padding
                      children: [
                        ListTile(
                          title: Text("JOIN RSP"),
                          onTap: _launchUrljoinrsp,
                        ),
                      ],
                    ),

                    ExpansionTile(
                      title: Text("Cadreform"),
                      leading: Icon(Icons.person), //add icon
                      childrenPadding: EdgeInsets.only(left: 60), //children padding
                      children: [
                        ListTile(
                          title: Text("Cadreform"),
                          onTap: _launchUrlcadreform,
                        ),
                      ],
                    ),
                    ListTile(
                      title: Text("Gallery"),
                      leading: Icon(Icons.person),
                      onTap: _launchUrlgallary,
                    ),
                    ListTile(
                      title: Text("Blogs"),
                      leading: Icon(Icons.person), //add icon
                      //childrenPadding: EdgeInsets.only(left:60),
                      onTap: _launchUrlblogs,
                    ),
                    ListTile(
                      title: Text("Contact Us"),
                      leading: Icon(Icons.person), //add icon
                      //childrenPadding: EdgeInsets.only(left:60),
                      onTap: _launchUrlcontactus,
                    ),//more child menu
                  ],
                )),
          ),
        ),
        body: Center(
          child: SingleChildScrollView(
            child:
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              InkWell(
                child: Container(
                  width: 600,
                  height: 650,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: const [
                       BoxShadow(
                          color: Colors.white10,
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
                      onTap: _launchUrlhistoryoftheparty,
                      title: const Text('History The Party',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(
                        8.0,
                      ),
                      child: Text(
                        '     Bahujan Samaj Party (BSP), English Majority People’s Party, national political party in India. It was formed in 1984. The BSP states that it represents the people at the lowest levels of the Hindu social system—those officially designated as members of the Scheduled Castes, Scheduled Tribes, and Other Backward Classes—as well as other religious and social minorities. The core support group of the BSP consists primarily of the Dalits (Scheduled Castes, formerly called untouchables). The party espouses no specific ideology, other than its opposition to and outspoken criticism of the inequalities of the caste system, and its main tenets are focused on respecting and upholding the constitutional rights of the lower members of Indian society',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.start,
                      children: [],
                    ),
                    Image.asset('assets/bspparty/bsphistory.jpg'),
                  ],
                ),
              ),

              Card(
                clipBehavior: Clip.antiAlias,
                color: Colors.blue[500],
                child: Column(
                  children: [
                    ListTile(
                      onTap: _launchUrlhistoryoftheparty,
                      title: const Text(
                        'About The Party',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'The BSP has also been a force in national politics. It has had a generally small but influential number of members in both the Lok Sabha (lower chamber of the Indian parliament) and the Rajya Sabha (upper chamber). As a rule, the party has avoided alliances with other political parties or groupings at the national level, with a few exceptions for brief periods (e.g., with the Samajwadi Party in 1993). It has been more inclined to support but not join coalitions, as it did in 2009, when its 21 members in the Lok Sabha allowed the United Progressive Alliance (led by the Indian National Congress) to attain a majority in that chamber and form a government. In the 2014 Lok Sabha polls, however, the BSP failed to win a single seat',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.start,
                      children: [
                        // FlatButton(
                        //   onPressed: () {
                        //     // Perform some action
                        //   },
                        //   child: const Text('ACTION 1'),
                        // ),
                        // FlatButton(
                        //   onPressed: () {
                        //     // Perform some action
                        //   },
                        //   child: const Text('ACTION 2'),
                        // ),
                      ],
                    ),
                    Image.asset('assets/bspparty/bspabout.jpg'),
                  ],
                ),
              ),

              Card(
                elevation: 50,
                shadowColor: Colors.black,
                color: Colors.blue[500],
                child: SizedBox(
                  // width: 800,
                  // height: 420,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Text(
                          'SELF HELP GROUPS (SHG-s) ',
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.green[900],
                            fontWeight: FontWeight.w500,
                          ), //Textstyle
                        ), //Text
                        const SizedBox(
                          height: 10,
                        ), //SizedBox
                        Image.asset("assets/bspmanifesto/manifesto5.jpg"), //Text
                        const SizedBox(
                          height: 10,
                        ), //SizedBox
                        SizedBox(
                          width: 100,
                          child: ElevatedButton(
                            onPressed: _launchUrlwomensbarosa,
                            style: ButtonStyle(
                                backgroundColor:
                                MaterialStateProperty.all(Colors.green)),
                            child: Padding(
                              padding: const EdgeInsets.all(4),
                              child: Row(
                                children: const [
                                  Icon(Icons.touch_app),
                                  Text('Visit')
                                ],
                              ),
                            ),
                          ), //RaisedButton
                        ) //SizedBox
                      ],
                    ), //Column
                  ), //Padding
                ), //SizedBox
              ),

              Card(
                elevation: 50,
                shadowColor: Colors.black,
                color: Colors.blue[500],
                child: SizedBox(
                  // width: 800,
                  // height: 420,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Text(
                          'NARI KRANTHI',
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.green[900],
                            fontWeight: FontWeight.w500,
                          ), //Textstyle
                        ), //Text
                        const SizedBox(
                          height: 10,
                        ), //SizedBox
                        Image.asset("assets/bspmanifesto/manifesto3.jpg"), //Text
                        const SizedBox(
                          height: 10,
                        ), //SizedBox
                        SizedBox(
                          width: 100,
                          child: ElevatedButton(
                            onPressed: _launchUrlwomensbarosa,
                            style: ButtonStyle(
                                backgroundColor:
                                MaterialStateProperty.all(Colors.green)),
                            child: Padding(
                              padding: const EdgeInsets.all(4),
                              child: Row(
                                children: const [
                                  Icon(Icons.touch_app),
                                  Text('Visit')
                                ],
                              ),
                            ),
                          ), //RaisedButton
                        ) //SizedBox
                      ],
                    ), //Column
                  ), //Padding
                ), //SizedBox
              ),

              Card(
                elevation: 50,
                shadowColor: Colors.black,
                color: Colors.blue[500],
                child: SizedBox(
                  // width: 800,
                  // height: 420,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Text(
                          'Empower T',
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.green[900],
                            fontWeight: FontWeight.w500,
                          ), //Textstyle
                        ), //Text
                        const SizedBox(
                          height: 10,
                        ), //SizedBox
                        Image.asset("assets/bspmanifesto/manifesto6.jpg"), //Text
                        const SizedBox(
                          height: 10,
                        ), //SizedBox
                        SizedBox(
                          width: 100,
                          child: ElevatedButton(
                            onPressed: _launchUrlwomensbarosa,
                            style: ButtonStyle(
                                backgroundColor:
                                MaterialStateProperty.all(Colors.green)),
                            child: Padding(
                              padding: const EdgeInsets.all(4),
                              child: Row(
                                children: const [
                                  Icon(Icons.touch_app),
                                  Text('Visit')
                                ],
                              ),
                            ),
                          ), //RaisedButton
                        ) //SizedBox
                      ],
                    ), //Column
                  ), //Padding
                ), //SizedBox
              ),
            ]),
          ),
        ),
      ),
    );
  }
}



Future<void> _launchUrlhistoryoftheparty() async {
  if (!await launchUrl(_urlhistory)) {
    throw Exception('Could not launch $_urlhistory');
  }
}

Future<void> _launchUrlwomensbarosa() async {
  if (!await launchUrl(_urlwomensbarosa)) {
    throw Exception('Could not launch $_urlwomensbarosa');
  }
}

Future<void> _launchUrlyuvajanabarosa() async {
  if (!await launchUrl(_urlyuvajanabarosa)) {
    throw Exception('Could not launch $_urlyuvajanabarosa');
  }
}

Future<void> _launchUrlinitiatives() async {
  if (!await launchUrl(_urlinitiatives)) {
    throw Exception('Could not launch $_urlinitiatives');
  }
}

Future<void> _launchUrlachievements() async {
  if (!await launchUrl(_urlachievements)) {
    throw Exception('Could not launch $_urlachievements');
  }
}

Future<void> _launchUrlofficebearers() async {
  if (!await launchUrl(_urlofficebearers)) {
    throw Exception('Could not launch $_urlofficebearers');
  }
}



Future<void> _launchUrljoinrsp() async {
  if (!await launchUrl(_urljoinrsp)) {
    throw Exception('Could not launch $_urljoinrsp');
  }
}


Future<void> _launchUrlcadreform() async {
  if (!await launchUrl(_urlcadreform)) {
    throw Exception('Could not launch $_urlcadreform');
  }
}

Future<void> _launchUrlgallary() async {
  if (!await launchUrl(_urlgallary)) {
    throw Exception('Could not launch $_urlgallary');
  }
}

Future<void> _launchUrlblogs() async {
  if (!await launchUrl(_urlblogs)) {
    throw Exception('Could not launch $_urlblogs');
  }
}

Future<void> _launchUrlcontactus() async {
  if (!await launchUrl(_urlcontactus)) {
    throw Exception('Could not launch $_urlcontactus');
  }
}
