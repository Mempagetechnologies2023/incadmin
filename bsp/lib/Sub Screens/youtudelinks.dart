import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _video1 = Uri.parse('https://www.youtube.com/watch?si=kOdzZHKM3yHpCJkT&v=4UE1jCM6Hu4&feature=youtu.be');

final Uri _video2 = Uri.parse('https://www.youtube.com/watch?v=fy0ysxiyvjQ');

final Uri _video3 = Uri.parse('https://www.youtube.com/watch?v=dlM__xlGACE');

final Uri _video4 = Uri.parse('https://www.youtube.com/watch?v=a_ONtzeShG8');

final Uri _video5 = Uri.parse('https://www.youtube.com/watch?v=oSQrMUXCpbQ');

final Uri _video6 = Uri.parse('https://www.youtube.com/watch?v=0D_iZdJHac4');

final Uri _video7 = Uri.parse('https://www.youtube.com/watch?v=GMRtKjeMeoc');

final Uri _video8 = Uri.parse('https://www.youtube.com/watch?v=GnDKpsmwPdU');

final Uri _video9 = Uri.parse('https://www.youtube.com/watch?v=329is_iB5BY');



class YouTudeLinks extends StatefulWidget {
  const YouTudeLinks({super.key});

  @override
  State<YouTudeLinks> createState() => _YouTudeLinksState();
}

class _YouTudeLinksState extends State<YouTudeLinks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('R.S Praveen Kumar'),
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
              child: Image.asset('assets/youtube/youtudeimage1.jpg'),
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
              child: Image.asset('assets/youtube/youtudeimage2.jpg'),
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
              child: Image.asset('assets/youtube/youtudeimage3.jpg'),
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
              child: Image.asset('assets/youtube/youtudeimage4.jpg'),
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
              child: Image.asset('assets/youtube/youtudeimage5.jpg'),
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
              child: Image.asset('assets/youtube/youtudeimage6.jpg'),
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
              child: Image.asset('assets/youtube/youtudeimage7.jpg'),
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
              child: Image.asset('assets/youtube/youtudeimage8.jpg'),
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
              child: Image.asset('assets/youtube/youtudeimage9.jpg'),
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