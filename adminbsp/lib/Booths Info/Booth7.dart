import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BoothSeven extends StatelessWidget {
  const BoothSeven({super.key});

  @override
  Widget build(BuildContext context) {
    final Uri phoneNumber = Uri.parse('tel:+8-317-675-943');
    final Uri whatsApp = Uri.parse('https://wa.me/+918317675943');
    return Scaffold(
      backgroundColor: Colors.blue[300],
      appBar: AppBar(
        title: Text('Booth 7'),
        backgroundColor: Colors.blue[700],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 250,
            color: Colors.blueAccent,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    InkWell(
                      onTap: () async {
                        final Uri url = Uri(
                          scheme: 'tel',
                          path: "831 767 5943",
                        );
                        if (await canLaunchUrl(url)) {
                          await launchUrl(url);
                        } else {
                          print('cannot launch this Url');
                        }
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.blue[900],
                        minRadius: 35.0,
                        child: Icon(
                          Icons.call,
                          size: 30.0,
                        ),
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white70,
                      minRadius: 60.0,
                      child: CircleAvatar(
                        radius: 50.0,
                        backgroundImage: NetworkImage(
                            'https://res.cloudinary.com/dsnycawxb/image/upload/v1677433666/samples/people/smiling-man.jpg'),
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        launchUrl(whatsApp);
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.blue.shade900,
                        minRadius: 35.0,
                        child: Icon(
                          Icons.message,
                          size: 30.0,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Leader',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Leader booth one',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text(
                    'Email',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    'leader@gmail.com',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                Divider(),
                ListTile(
                  title: Text(
                    'Mobile Number',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    '9876543210',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                Divider(),
                ListTile(
                  title: Text(
                    'Whats App',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    '9876543210',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

// whatsApp() async {
//   var contact = '8317675943';

//   var android_url =
//       "whatsapp://send?phone=" + contact + "&text= Hi, I need Some help";

//   var iOS_url =
//       "http://wa.me/$contact?text=${Uri.parse("Hi , i need some help")}";

//   if (Platform.isIOS) {
//     if (await canLaunch(iOS_url)) {
//       await launch(iOS_url, forceSafariVC: false);
//     } else {
//       print("whats app not installed");
//     }
//     if (await canLaunch(android_url)) {
//       await launch(android_url);
//     } else {
//       print('whtas app not installed');
//     }
//   }
// }
