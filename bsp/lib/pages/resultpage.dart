import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final String title;
  final String description;
  final String imagePath;

  const ResultPage({super.key, required this.title, required this.description, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[700],
      appBar: AppBar(
        title: Text(title,style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue[900],
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
                  description,
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
