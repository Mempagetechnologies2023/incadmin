import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final String title;
  final String description;
  final String description2;
  final String description3;
  final String imagePath;

  const ResultPage({super.key, required this.title, required this.description, required this.description2, required this.description3, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: Text(title,style: TextStyle(fontWeight: FontWeight.w900),),
        backgroundColor: Colors.blue[300],

      ),
      body: ListView(
        children: [
          Column(
            children: [
              const SizedBox(height: 10.0,),
              Image.asset(imagePath),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "राहुल गांधी जीवनी",
                  textAlign: TextAlign.start,
                  style: const TextStyle(fontSize: 18,fontWeight: FontWeight.w900),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  description,
                  textAlign: TextAlign.start,
                  style: const TextStyle(fontSize: 18,fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "राहुल गांधी का प्रारंभिक जीवन",
                  textAlign: TextAlign.start,
                  style: const TextStyle(fontSize: 18,fontWeight: FontWeight.w900),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  description2,
                  textAlign: TextAlign.start,
                  style: const TextStyle(fontSize: 18,fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "राहुल गांधी की शिक्षा का अवलोकन",
                  textAlign: TextAlign.start,
                  style: const TextStyle(fontSize: 18,fontWeight: FontWeight.w900),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  description3,
                  textAlign: TextAlign.start,
                  style: const TextStyle(fontSize: 18,fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),

        ],
      ),
    );
  }
}
