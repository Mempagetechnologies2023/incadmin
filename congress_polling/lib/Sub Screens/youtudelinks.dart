import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _video1 = Uri.parse('https://youtu.be/_1mMtptBES0?si=j5Qunf0fZ7n_wRtH');

final Uri _video2 = Uri.parse('https://youtu.be/EGXTUHWZv28?si=w00LrASeui1MLexi');

final Uri _video3 = Uri.parse('https://youtu.be/_De22rqOF4I?si=3q0IwWTXOv9JHsVs');

final Uri _video4 = Uri.parse('https://youtu.be/dtvNMy7HEKI?si=mH8uFWnq48NZJCZ_');

final Uri _video5 = Uri.parse('https://youtu.be/fsvuK6YXZQk?si=4qgEo4t602UhZ5nL');

final Uri _video6 = Uri.parse('https://youtu.be/F5Kr8Kvx7ro?si=J8cRl1eSRz6OiBfk');

final Uri _video7 = Uri.parse('https://youtu.be/vinAV8oOOlk?si=Dfs3JcM2FY-nxQEz');

final Uri _video8 = Uri.parse('https://youtu.be/HVZDhBjIl-8?si=2XK_-Zq6SOhRE9oZ');

final Uri _video9 = Uri.parse('https://youtu.be/fczxDFtRnqY?si=mYkRLPQHxdWQHKYT');



class YouTudeLinks extends StatefulWidget {
  const YouTudeLinks({super.key});

  @override
  State<YouTudeLinks> createState() => _YouTudeLinksState();
}

class _YouTudeLinksState extends State<YouTudeLinks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        backgroundColor: Colors.blue[300],
        title: Text('राहुल गांधी (Rahul Gandhi)'),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: _launchUrlvideo1,
            child: Container(
              height: 450,
              width: 640,
              child: Image.asset('assets/youtube/youtubeimage1.jpg'),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: _launchUrlvideo2,
            child: Container(
              height: 350,
              width: 300,
              child: Image.asset('assets/youtube/youtubeimage2.jpg'),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: _launchUrlvideo3,
            child: Container(
              height: 350,
              width: 270,
              child: Image.asset('assets/youtube/youtubeimage3.jpg'),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: _launchUrlvideo4,
            child: Container(
              height: 350,
              width: 300,
              child: Image.asset('assets/youtube/youtubeimage4.jpg'),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: _launchUrlvideo5,
            child: Container(
              height: 350,
              width: 300,
              child: Image.asset('assets/youtube/youtubeimage5.jpg'),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: _launchUrlvideo6,
            child: Container(
              height: 350,
              width: 300,
              child: Image.asset('assets/youtube/youtubeimage6.jpg'),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: _launchUrlvideo7,
            child: Container(
              height: 350,
              width: 300,
              child: Image.asset('assets/youtube/youtubeimage7.jpg'),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: _launchUrlvideo8,
            child: Container(
              height: 350,
              width: 300,
              child: Image.asset('assets/youtube/youtubeimage8.jpg'),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: _launchUrlvideo9,
            child: Container(
              height: 350,
              width: 300,
              child: Image.asset('assets/youtube/youtubeimage9.jpg'),
            ),
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}

Future<void> _launchUrlvideo1() async {
  if (!await launchUrl(_video1)) {
    throw Exception('Could not launch $_video1');
  }
}

Future<void> _launchUrlvideo2() async {
  if (!await launchUrl(_video2)) {
    throw Exception('Could not launch $_video2');
  }
}

Future<void> _launchUrlvideo3() async {
  if (!await launchUrl(_video3)) {
    throw Exception('Could not launch $_video3');
  }
}
Future<void> _launchUrlvideo4() async {
  if (!await launchUrl(_video4)) {
    throw Exception('Could not launch $_video4');
  }
}
Future<void> _launchUrlvideo5() async {
  if (!await launchUrl(_video5)) {
    throw Exception('Could not launch $_video5');
  }
}
Future<void> _launchUrlvideo6() async {
  if (!await launchUrl(_video6)) {
    throw Exception('Could not launch $_video6');
  }
}
Future<void> _launchUrlvideo7() async {
  if (!await launchUrl(_video7)) {
    throw Exception('Could not launch $_video7');
  }
}
Future<void> _launchUrlvideo8() async {
  if (!await launchUrl(_video8)) {
    throw Exception('Could not launch $_video8');
  }
}
Future<void> _launchUrlvideo9() async {
  if (!await launchUrl(_video9)) {
    throw Exception('Could not launch $_video9');
  }
}