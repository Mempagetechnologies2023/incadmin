import 'package:flutter/material.dart';

class ConstituencyResult extends StatelessWidget {
  final String title;
  final String heading;
  final String imageTitle;
  final String about;
  final String description;
  final String imagePath;
  final String imagePathOne;
  final String imagePathTwo;
  final String descriptionOne;
  final String descriptionTwo;

  const ConstituencyResult(
      {super.key,
        required this.title,
        required this.description,
        required this.imagePath,
        required this.imagePathOne,
        required this.imagePathTwo,
        required this.descriptionOne,
        required this.descriptionTwo,
        required this.about,
        required this.heading, required this.imageTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.blue[300],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: SizedBox(
              height: 300,
              width: 520,
              child: Image.asset(imageTitle,fit: BoxFit.cover,),
            ),
          ),
          Text(
            heading,
            style: const TextStyle(fontSize: 24,fontWeight: FontWeight.w900),
          ),
          Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: RichText(
                  textAlign: TextAlign.start,
                  text: TextSpan(children: <TextSpan>[
                    TextSpan(
                      text: about,
                      style: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ]),
                ),
              ),
              const SizedBox(
                height: 40.0,
              ),
              Container(
                height: 350,
                width: 620,
                child: Image.asset(imagePath,fit: BoxFit.cover,),
              ),
              Text(
                "गढ़माफी धाम",
                style: const TextStyle(fontSize: 24,fontWeight: FontWeight.w900),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: RichText(
                  textAlign: TextAlign.justify,
                  text: TextSpan(children: <TextSpan>[
                    TextSpan(
                      text: "$description",
                      style: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ]),
                ),
              ),
              const SizedBox(
                height: 40.0,
              ),
              SizedBox(
                height: 350,
                width: 620,
                child: Image.asset(
                  imagePathOne,
                  fit: BoxFit.cover,
                ),
              ),
              Text(
                "नंदमहर धाम, गौरीगंज, उत्तर प्रदेश ",
                style: const TextStyle(fontSize: 24,fontWeight: FontWeight.w900),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: RichText(
                  textAlign: TextAlign.justify,
                  text: TextSpan(children: <TextSpan>[
                    TextSpan(
                      text: descriptionOne,
                      style: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ]),
                ),
              ),
              const SizedBox(
                height: 40.0,
              ),
              SizedBox(
                height: 350,
                width: 620,
                child: Image.asset(imagePathTwo,fit: BoxFit.cover,),
              ),
              Text(
                "मलिक मोहम्मद जायसी",
                style: const TextStyle(fontSize: 24,fontWeight: FontWeight.w900),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: RichText(
                  textAlign: TextAlign.justify,
                  text: TextSpan(children: <TextSpan>[
                    TextSpan(
                      text: descriptionTwo,
                      style: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ]),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
