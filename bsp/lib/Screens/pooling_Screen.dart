import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../Sub Screens/constituencyoverview.dart';
import '../Sub Screens/partleader.dart';
import '../Sub Screens/userform.dart';
import '../Sub Screens/youtudelinks.dart';

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


class PollingStatus extends StatefulWidget {
  const PollingStatus({super.key});

  @override
  State<PollingStatus> createState() => _PollingStatusState();
}

class _PollingStatusState extends State<PollingStatus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    backgroundColor: Colors.blue,
                    fixedSize: const Size(190, 190),
                    shape: const CircleBorder(),
                  ),
                  child: const Text(
                    "Know Your MLA/MP",
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
                    backgroundColor: Colors.blue,
                    fixedSize: const Size(190, 190),
                    shape: const CircleBorder(),
                  ),
                  child: const Text(
                    'Poll Management',
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
                    backgroundColor: Colors.blue,
                    fixedSize: const Size(190, 190),
                    shape: const CircleBorder(),
                  ),
                  child: const Text(
                    'Constituency Overview',
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
                              const YouTudeLinks()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      fixedSize: const Size(190, 190),
                      shape: const CircleBorder(),
                    ),
                    child: Image.asset('assets/constituencyoverview/youtude1.png')
                ),
              ],
            ),
          ),
        ],
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

