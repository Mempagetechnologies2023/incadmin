import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:url_launcher/url_launcher.dart';
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


final Uri _urlmayavathi = Uri.parse('https://www.bspindia.co.in/');

final Uri _urlmayavathifacebook =
    Uri.parse('https://www.facebook.com/MayawatiFanPage/');

final Uri _urlmayavathitwitter = Uri.parse(
    'https://twitter.com/Mayawati?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor');

final Uri _urlakashanand = Uri.parse('https://www.facebook.com/AnandAkash4495/');

final Uri _urlramji = Uri.parse('https://www.facebook.com/ramjigautambsp/');

final Uri _urlpraveen = Uri.parse('https://www.facebook.com/praveenkumarswaeroIPS/');

final Uri _urlnirmalasitaraman = Uri.parse('https://twitter.com/nsitharaman');

final Uri _urlnarendrasinghthomar = Uri.parse('https://twitter.com/nstomar');

final Uri _urlanuragthakur = Uri.parse('https://twitter.com/ianuragthakur');

class LeadersScreen extends StatefulWidget {
  const LeadersScreen({Key? key}) : super(key: key);

  @override
  State<LeadersScreen> createState() => _LeadersScreenState();
}

class _LeadersScreenState extends State<LeadersScreen> {
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
              Container(
                child: GFCard(
                  color: Colors.blue,
                  boxFit: BoxFit.cover,
                  titlePosition: GFPosition.start,
                  // height: 650,
                  image: Image.asset(
                    'assets/bspleaders/mayawati.jpg',
                    height: MediaQuery.of(context).size.height * 0.50,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                  showImage: true,
                  title: const GFListTile(
                    onLongPress: _launchUrlmayavathi,
                    avatar: GFAvatar(
                      backgroundImage:
                          AssetImage('assets/bspleaders/mayawati.jpg'),
                    ),
                    titleText: 'Mayawati',
                    subTitleText: 'Party President',
                    onTap: _launchUrlmayavathi,
                  ),
                  content: const Text(
                    "18th Chief Minister of Uttar Pradesh ",
                  ),

                  buttonBar: const GFButtonBar(
                    children: <Widget>[
                      GFButton(
                        onPressed: _launchUrlmayavathitwitter,
                        text: "Twitter",
                        icon: Icon(Icons.person),
                        color: Colors.lightBlueAccent,
                        shape: GFButtonShape.pills,
                      ),
                      GFButton(
                        onPressed: _launchUrlmayavathifacebook,
                        text: "FaceBook",
                        icon: Icon(Icons.connect_without_contact_sharp),
                        color: Colors.deepPurple,
                        shape: GFButtonShape.pills,
                      ),
                      //SizedBox
                    ],
                  ),
                ),
              ),

              //about Akash Anand
              Container(
                child: GFCard(
                  color: Colors.blue,
                  boxFit: BoxFit.cover,
                  titlePosition: GFPosition.start,
                  // height: 600,
                  image: Image.asset(
                    'assets/bspleaders/akashanand1.jpg',
                    height: MediaQuery.of(context).size.height * 0.45,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                  showImage: true,
                  title: GFListTile(
                    onLongPress: _launchUrlakashanand,
                    avatar: GFAvatar(
                      backgroundImage:
                          AssetImage('assets/bspleaders/akashanand1.jpg'),
                    ),
                    titleText: 'Akash Anand',
                    onTap: _launchUrlakashanand,
                  ),
                  content: Text("National Coordinator of the BSP"),
                  buttonBar: GFButtonBar(
                    children: <Widget>[
                      SizedBox(
                        width: 120,
                        child: ElevatedButton(
                          onPressed: _launchUrlakashanand,
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
                        ),
                      ) //SizedBox
                    ],
                  ),
                ),
              ),

              //about amith shah

              Container(
                child: GFCard(
                  color: Colors.blue,
                  boxFit: BoxFit.cover,
                  titlePosition: GFPosition.start,
                  // height: 600,
                  image: Image.asset(
                    'assets/bspleaders/ramji.jpg',
                    height: MediaQuery.of(context).size.height * 0.50,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                  showImage: true,
                  title: GFListTile(
                    onTap: _launchUrlramji,
                    avatar: GFAvatar(
                      backgroundImage:
                          AssetImage('assets/bspleaders/ramji.jpg'),
                    ),
                    titleText: 'RAMJI GAUTAM',
                    onLongPress: _launchUrlramji,
                  ),
                  content: Text("Member of Rajya Sabha"),
                  buttonBar: GFButtonBar(
                    children: <Widget>[
                      SizedBox(
                        width: 120,
                        child: ElevatedButton(
                          onPressed: _launchUrlramji,
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
                        ),
                      ) //SizedBox
                    ],
                  ),
                ),
              ),

              //about nitin gadkari

              Container(
                child: GFCard(
                  color: Colors.blue,
                  boxFit: BoxFit.cover,
                  titlePosition: GFPosition.start,
                  // height: 600,
                  image: Image.asset(
                    'assets/bspleaders/praveen.jpg',
                    height: MediaQuery.of(context).size.height * 0.50,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                  showImage: true,
                  title: GFListTile(
                    onLongPress: _launchUrlpraveen,
                    avatar: GFAvatar(
                      backgroundImage:
                          AssetImage('assets/bspleaders/praveen.jpg'),
                      backgroundColor: Colors.orange,
                    ),
                    titleText: 'R. S. Praveen Kumar',
                    onTap: _launchUrlpraveen,
                  ),
                  content: Text("BSP Party President in Telengana"),
                  buttonBar: GFButtonBar(
                    children: <Widget>[
                      SizedBox(
                        width: 120,
                        child: ElevatedButton(
                          onPressed: _launchUrlpraveen,
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.green)),
                          child: const Padding(
                            padding: const EdgeInsets.all(4),
                            child: Row(
                              children: const [
                                Icon(Icons.touch_app),
                                Text('Visit')
                              ],
                            ),
                          ),
                        ),
                      ) //SizedBox
                    ],
                  ),
                ),
              ),

              //about nirmal sitrharanan
              // Container(
              //   child: GFCard(
              //     color: Colors.blue,
              //     boxFit: BoxFit.cover,
              //     titlePosition: GFPosition.start,
              //     // height: 600,
              //     image: Image.asset(
              //       'assets/images/nirmala.jpeg',
              //       height: MediaQuery.of(context).size.height * 0.45,
              //       width: MediaQuery.of(context).size.width,
              //       fit: BoxFit.cover,
              //     ),
              //     showImage: true,
              //     title: GFListTile(
              //       onTap: _launchUrlnirmalasitaraman,
              //       avatar: GFAvatar(
              //         backgroundImage: AssetImage('assets/images/nirmala.jpeg'),
              //       ),
              //       titleText: 'R.S Praveen Kumar',
              //       onLongPress: _launchUrlnirmalasitaraman,
              //     ),
              //     content: Text("MINISTER OF FINANCE AND CORPORATE AFFAIRS"),
              //     buttonBar: GFButtonBar(
              //       children: <Widget>[
              //         SizedBox(
              //           width: 100,
              //           child: ElevatedButton(
              //             onPressed: _launchUrlnirmalasitaraman,
              //             style: ButtonStyle(
              //                 backgroundColor:
              //                     MaterialStateProperty.all(Colors.green)),
              //             child: Padding(
              //               padding: const EdgeInsets.all(4),
              //               child: Row(
              //                 children: const [
              //                   Icon(Icons.touch_app),
              //                   Text('Visit')
              //                 ],
              //               ),
              //             ),
              //           ),
              //         ) //SizedBox
              //       ],
              //     ),
              //   ),
              // ),

              //about thomar
              // Container(
              //   child: GFCard(
              //     color: Colors.blue,
              //     boxFit: BoxFit.cover,
              //     titlePosition: GFPosition.start,
              //     // height: 600,
              //     image: Image.asset(
              //       'assets/images/narendra.jpg',
              //       height: MediaQuery.of(context).size.height * 0.50,
              //       width: MediaQuery.of(context).size.width,
              //       fit: BoxFit.cover,
              //     ),
              //     showImage: true,
              //     title: GFListTile(
              //       onTap: _launchUrlnarendrasinghthomar,
              //       avatar: GFAvatar(
              //         backgroundImage: AssetImage('assets/images/narendra.jpg'),
              //       ),
              //       titleText: 'Narendra Singh Tomar',
              //       onLongPress: _launchUrlnarendrasinghthomar,
              //     ),
              //     content: Text("Ministry of Agriculture and Farmers Welfare"),
              //     buttonBar: GFButtonBar(
              //       children: <Widget>[
              //         SizedBox(
              //           width: 100,
              //           child: ElevatedButton(
              //             onPressed: _launchUrlnarendrasinghthomar,
              //             style: ButtonStyle(
              //                 backgroundColor:
              //                     MaterialStateProperty.all(Colors.green)),
              //             child: const Padding(
              //               padding: const EdgeInsets.all(4),
              //               child: Row(
              //                 children: const [
              //                   Icon(Icons.touch_app),
              //                   Text('Visit')
              //                 ],
              //               ),
              //             ),
              //           ),
              //         ) //SizedBox
              //       ],
              //     ),
              //   ),
              // ),

              //About  Anurag

              // Container(
              //   child: GFCard(
              //     color: Colors.blue,
              //     boxFit: BoxFit.cover,
              //     titlePosition: GFPosition.start,
              //     // height: 600,
              //     image: Image.asset(
              //       'assets/images/anurag.png',
              //       height: MediaQuery.of(context).size.height * 0.50,
              //       width: MediaQuery.of(context).size.width,
              //       fit: BoxFit.cover,
              //     ),
              //     showImage: true,
              //     title: GFListTile(
              //       onTap: _launchUrlanuragthakur,
              //       avatar: GFAvatar(
              //         backgroundImage: AssetImage('assets/images/anurag.png'),
              //       ),
              //       titleText: 'Anurag Thakur',
              //       onLongPress: _launchUrlanuragthakur,
              //     ),
              //     content:
              //         Text(" Minister for I&B and Youth Affairs & Sports, GoI"),
              //     buttonBar: GFButtonBar(
              //       children: <Widget>[
              //         SizedBox(
              //           width: 100,
              //           child: ElevatedButton(
              //             onPressed: _launchUrlanuragthakur,
              //             style: ButtonStyle(
              //                 backgroundColor:
              //                     MaterialStateProperty.all(Colors.green)),
              //             child: Padding(
              //               padding: const EdgeInsets.all(4),
              //               child: Row(
              //                 children: const [
              //                   Icon(Icons.touch_app),
              //                   Text('Visit')
              //                 ],
              //               ),
              //             ),
              //           ),
              //         ) //SizedBox
              //       ],
              //     ),
              //   ),
              // ),
            ]),
          ),
        ),
      ),
    );
  }
}

Future<void> _launchUrlmayavathi() async {
  if (!await launchUrl(_urlmayavathi)) {
    throw Exception('Could not launch $_urlmayavathi');
  }
}

Future<void> _launchUrlmayavathifacebook() async {
  if (!await launchUrl(_urlmayavathifacebook)) {
    throw Exception('Could not launch $_urlmayavathifacebook');
  }
}

Future<void> _launchUrlmayavathitwitter() async {
  if (!await launchUrl(_urlmayavathitwitter)) {
    throw Exception('Could not launch $_urlmayavathitwitter');
  }
}


Future<void> _launchUrlakashanand() async {
  if (!await launchUrl(_urlakashanand)) {
    throw Exception('Could not launch $_urlakashanand');
  }
}

Future<void> _launchUrlramji() async {
  if (!await launchUrl(_urlramji)) {
    throw Exception('Could not launch $_urlramji');
  }
}

Future<void> _launchUrlpraveen() async {
  if (!await launchUrl(_urlpraveen)) {
    throw Exception('Could not launch $_urlpraveen');
  }
}

Future<void> _launchUrlnirmalasitaraman() async {
  if (!await launchUrl(_urlnirmalasitaraman)) {
    throw Exception('Could not launch $_urlnirmalasitaraman');
  }
}

Future<void> _launchUrlnarendrasinghthomar() async {
  if (!await launchUrl(_urlnarendrasinghthomar)) {
    throw Exception('Could not launch $_urlnarendrasinghthomar');
  }
}

Future<void> _launchUrlanuragthakur() async {
  if (!await launchUrl(_urlanuragthakur)) {
    throw Exception('Could not launch $_urlanuragthakur');
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



