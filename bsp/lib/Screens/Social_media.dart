import 'package:flutter/material.dart';
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


// final Uri _urlfacebook = Uri.parse('https://www.facebook.com/BJP4India/');

final Uri _urlfacebook1 = Uri.parse(
    'https://www.facebook.com/photo.php?fbid=884357869922635&set=pb.100050452901685.-2207520000&type=3');

final Uri _urlfacebook2 = Uri.parse(
    'https://www.facebook.com/photo?fbid=883196886705400&set=pb.100050452901685.-2207520000');

final Uri _urlfacebook3 = Uri.parse(
    'https://www.facebook.com/photo/?fbid=878203390538083&set=pb.100050452901685.-2207520000');

final Uri _urlfacebook4 = Uri.parse(
    'https://www.facebook.com/photo/?fbid=877829420575480&set=pb.100050452901685.-2207520000');

final Uri _urlinstagram1 = Uri.parse(
    'https://www.instagram.com/p/CxvLJW4ST9m/?igshid=MzRlODBiNWFlZA%3D%3D');

final Uri _urlinstagram2 = Uri.parse(
    'https://www.instagram.com/p/CxzlxolL_Uv/?igshid=MzRlODBiNWFlZA%3D%3D');

final Uri _urlinstagram3 = Uri.parse(
    'https://www.instagram.com/p/Cx0YPUnyLlh/?igshid=MzRlODBiNWFlZA%3D%3D&img_index=1');

final Uri _urlinstagram4 = Uri.parse(
    'https://www.instagram.com/p/Cx24CT5yy5w/?igshid=MTc4MmM1YmI2Ng%3D%3D&img_index=1');

final Uri _urltwitter1 =
Uri.parse('https://twitter.com/RSPraveenSwaero/status/1655246689941291012/photo/1');

final Uri _urltwitter2 =
Uri.parse('https://twitter.com/RSPraveenSwaero/status/1654826781659254784/photo/1');

final Uri _urltwitter3 = Uri.parse(
    'https://twitter.com/RSPraveenSwaero/status/1382020170894372866/photo/1');

final Uri _urltwitter4 =
Uri.parse('https://twitter.com/RSPraveenSwaero/status/1465980468050812930/photo/1');

class SocialMediaScreen extends StatefulWidget {
  const SocialMediaScreen({Key? key}) : super(key: key);

  @override
  State<SocialMediaScreen> createState() => _SocialMediaScreen();
}

class _SocialMediaScreen extends State<SocialMediaScreen> {
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
        // backgroundColor: Colors.black,
        body: Container(
          padding: EdgeInsets.only(left: 10, right: 10, top: 0),
          child: Column(
            children: [
              //Facebook Social Media
              Expanded(
                child: ListView(
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                // crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CircleAvatar(
                                    radius: 22,
                                    backgroundImage: AssetImage(
                                        "assets/bspscoialmedia/facebook4.jpg"),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Column(
                                    // crossAxisAlignment:
                                    // CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Facebook",
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Icon(Icons.more_vert)
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Stack(
                            children: [
                              Container(
                                  margin: const EdgeInsets.symmetric(
                                      vertical: 20.0),
                                  height: 250,
                                  child: ListView(
                                    // This next line does the trick.
                                    scrollDirection: Axis.horizontal,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 10,
                                      ),
                                      InkWell(
                                        onTap: _launchUrlfacebook1,
                                        child: Container(
                                          width: 300,
                                          height: 300,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(20),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.blue,
                                                spreadRadius: 0.2,
                                                blurRadius: 0,
                                              ),
                                            ],
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/bspscoialmedia/facebook1.jpg"),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      InkWell(
                                        onTap: _launchUrlfacebook2,
                                        child: Container(
                                          width: 300,
                                          height: 300,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(20),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.blue,
                                                spreadRadius: 0.2,
                                                blurRadius: 0,
                                              ),
                                            ],
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/bspscoialmedia/facebook2.jpg"),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      InkWell(
                                        onTap: _launchUrlfacebook3,
                                        child: Container(
                                          width: 300,
                                          height: 300,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(20),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.blue,
                                                spreadRadius: 0.2,
                                                blurRadius: 0,
                                              ),
                                            ],
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/bspscoialmedia/facebook3.jpg"),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      InkWell(
                                        onTap: _launchUrlfacebook4,
                                        child: Container(
                                          width: 300,
                                          height: 300,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(20),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.blue,
                                                spreadRadius: 0.2,
                                                blurRadius: 0,
                                              ),
                                            ],
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/bspscoialmedia/facebook4.jpg"),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )),
                              SizedBox(
                                height: 0,
                              ),
                              Container(
                                height: 15,
                                color: Colors.blue,
                                margin: EdgeInsets.symmetric(horizontal: 10),
                              ),
                              Container(
                                height: 3,
                                color: Colors.blue[900],
                                margin: EdgeInsets.symmetric(horizontal: 1),
                              ),
                              Container(
                                height: 15,
                                color: Colors.blue[900],
                                margin: EdgeInsets.symmetric(horizontal: 10),
                              ),
                            ],
                          ),
                          Container(
                            height: 15,
                            color: Colors.blue[900],
                            margin: EdgeInsets.symmetric(horizontal: 10),
                          ),
                          Container(
                            height: 3,
                            color: Colors.black,
                            margin: EdgeInsets.symmetric(horizontal: 1),
                          ),
                          Container(
                            height: 15,
                            color: Colors.blue[900],
                            margin: EdgeInsets.symmetric(horizontal: 10),
                          ),
                        ],
                      ),
                    ),

                    //instagrm social media
                    Container(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CircleAvatar(
                                    radius: 22,
                                    backgroundImage: AssetImage(
                                        "assets/bspscoialmedia/facebook4.jpg"),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Instagram",
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        "Posts",
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              Icon(Icons.more_vert)
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Stack(
                            children: [
                              Container(
                                  margin: const EdgeInsets.symmetric(
                                      vertical: 20.0),
                                  height: 250.0,
                                  child: ListView(
                                    // This next line does the trick.
                                    scrollDirection: Axis.horizontal,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 10,
                                      ),
                                      InkWell(
                                        onTap: _launchUrlinstagram1,
                                        child: Container(
                                          width: 300,
                                          height: 300,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(20),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.blue,
                                                spreadRadius: 0.2,
                                                blurRadius: 0,
                                              ),
                                            ],
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/bspscoialmedia/instagram1.jpg"),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      InkWell(
                                        onTap: _launchUrlinstagram2,
                                        child: Container(
                                          width: 300,
                                          height: 300,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(20),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.blue,
                                                spreadRadius: 0.2,
                                                blurRadius: 0,
                                              ),
                                            ],
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/bspscoialmedia/instagram2.jpg"),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      InkWell(
                                        onTap: _launchUrlinstagram3,
                                        child: Container(
                                          width: 300,
                                          height: 300,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(20),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.blue,
                                                spreadRadius: 0.2,
                                                blurRadius: 0,
                                              ),
                                            ],
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/bspscoialmedia/instagram3.jpg"),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      InkWell(
                                        onTap: _launchUrlinstagram4,
                                        child: Container(
                                          width: 300,
                                          height: 300,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(20),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.blue,
                                                spreadRadius: 0.2,
                                                blurRadius: 0,
                                              ),
                                            ],
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/bspscoialmedia/instagram4.jpg"),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )),
                              SizedBox(
                                height: 0,
                              ),
                              Container(
                                height: 15,
                                color: Colors.blue[900],
                                margin: EdgeInsets.symmetric(horizontal: 10),
                              ),
                              Container(
                                height: 3,
                                color: Colors.blue[900],
                                margin: EdgeInsets.symmetric(horizontal: 1),
                              ),
                              Container(
                                height: 15,
                                color: Colors.blue[900],
                                margin: EdgeInsets.symmetric(horizontal: 10),
                              ),
                            ],
                          ),
                          Container(
                            height: 15,
                            color: Colors.blue[900],
                            margin: EdgeInsets.symmetric(horizontal: 10),
                          ),
                          Container(
                            height: 3,
                            color: Colors.black,
                            margin: EdgeInsets.symmetric(horizontal: 1),
                          ),
                          Container(
                            height: 15,
                            color: Colors.blue[900],
                            margin: EdgeInsets.symmetric(horizontal: 10),
                          ),
                        ],
                      ),
                    ),

                    //twitter social media
                    Container(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CircleAvatar(
                                    radius: 22,
                                    backgroundImage: AssetImage(
                                        "assets/bspscoialmedia/facebook4.jpg"),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Twitter",
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        "Posts",
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              Icon(Icons.more_vert)
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Stack(
                            children: [
                              Container(
                                  margin: const EdgeInsets.symmetric(
                                      vertical: 20.0),
                                  height: 250.0,
                                  child: ListView(
                                    // This next line does the trick.
                                    scrollDirection: Axis.horizontal,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 10,
                                      ),
                                      InkWell(
                                        onTap: _launchUrltwitter1,
                                        child: Container(
                                          width: 300,
                                          height: 300,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(20),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.blue,
                                                spreadRadius: 0.2,
                                                blurRadius: 0,
                                              ),
                                            ],
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/bspscoialmedia/twitter1.jpg"),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      InkWell(
                                        onTap: _launchUrltwitter2,
                                        child: Container(
                                          width: 300,
                                          height: 300,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(20),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.blue,
                                                spreadRadius: 0.2,
                                                blurRadius: 0,
                                              ),
                                            ],
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/bspscoialmedia/twitter2.jpg"),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      InkWell(
                                        onTap: _launchUrltwitter3,
                                        child: Container(
                                          width: 300,
                                          height: 300,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(20),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.blue,
                                                spreadRadius: 0.2,
                                                blurRadius: 0,
                                              ),
                                            ],
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/bspscoialmedia/twitter3.jpg"),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      InkWell(
                                        onTap: _launchUrltwitter4,
                                        child: Container(
                                          width: 300,
                                          height: 300,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(20),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.blue,
                                                spreadRadius: 0.2,
                                                blurRadius: 0,
                                              ),
                                            ],
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/bspscoialmedia/twitter4.jpg"),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )),
                              SizedBox(
                                height: 0,
                              ),
                              Container(
                                height: 15,
                                color: Colors.blue[900],
                                margin: EdgeInsets.symmetric(horizontal: 10),
                              ),
                              Container(
                                height: 3,
                                color: Colors.blue[900],
                                margin: EdgeInsets.symmetric(horizontal: 1),
                              ),
                              Container(
                                height: 15,
                                color: Colors.blue[900],
                                margin: EdgeInsets.symmetric(horizontal: 10),
                              ),
                            ],
                          ),
                          Container(
                            height: 15,
                            color: Colors.blue[900],
                            margin: EdgeInsets.symmetric(horizontal: 10),
                          ),
                          Container(
                            height: 3,
                            color: Colors.black,
                            margin: EdgeInsets.symmetric(horizontal: 1),
                          ),
                          Container(
                            height: 15,
                            color: Colors.blue[900],
                            margin: EdgeInsets.symmetric(horizontal: 10),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container buildStoryAvatar(String url) {
    return Container(
      margin: EdgeInsets.only(left: 18),
      height: 60,
      width: 60,
      padding: EdgeInsets.all(3),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30), color: Colors.red),
      child: CircleAvatar(
        radius: 18,
        backgroundImage: NetworkImage(url),
      ),
    );
  }
}


Future<void> _launchUrlfacebook1() async {
  if (!await launchUrl(_urlfacebook1)) {
    throw Exception('Could not launch $_urlfacebook1');
  }
}

Future<void> _launchUrlfacebook2() async {
  if (!await launchUrl(_urlfacebook2)) {
    throw Exception('Could not launch $_urlfacebook2');
  }
}

Future<void> _launchUrlfacebook3() async {
  if (!await launchUrl(_urlfacebook3)) {
    throw Exception('Could not launch $_urlfacebook3');
  }
}

Future<void> _launchUrlfacebook4() async {
  if (!await launchUrl(_urlfacebook4)) {
    throw Exception('Could not launch $_urlfacebook4');
  }
}

Future<void> _launchUrlinstagram1() async {
  if (!await launchUrl(_urlinstagram1)) {
    throw Exception('Could not launch $_urlinstagram1');
  }
}

Future<void> _launchUrlinstagram2() async {
  if (!await launchUrl(_urlinstagram2)) {
    throw Exception('Could not launch $_urlinstagram2');
  }
}

Future<void> _launchUrlinstagram3() async {
  if (!await launchUrl(_urlinstagram3)) {
    throw Exception('Could not launch $_urlinstagram3');
  }
}

Future<void> _launchUrlinstagram4() async {
  if (!await launchUrl(_urlinstagram4)) {
    throw Exception('Could not launch $_urlinstagram4');
  }
}

Future<void> _launchUrltwitter1() async {
  if (!await launchUrl(_urltwitter1)) {
    throw Exception('Could not launch $_urltwitter1');
  }
}

Future<void> _launchUrltwitter2() async {
  if (!await launchUrl(_urltwitter2)) {
    throw Exception('Could not launch $_urltwitter2');
  }
}

Future<void> _launchUrltwitter3() async {
  if (!await launchUrl(_urltwitter3)) {
    throw Exception('Could not launch $_urltwitter3');
  }
}

Future<void> _launchUrltwitter4() async {
  if (!await launchUrl(_urltwitter4)) {
    throw Exception('Could not launch $_urltwitter4');
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
