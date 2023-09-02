import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class intro_page extends StatefulWidget {
  const intro_page({super.key});

  @override
  State<intro_page> createState() => _intro_pageState();
}

class _intro_pageState extends State<intro_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: IntroductionScreen(
        pages: [
          PageViewModel(
            title: "India News",
            body: "Made In Red & White",
            image: Center(
              child: Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://image1.masterfile.com/getImage/NjQwLTAyNzcxMjYxZW4uMDAwMDAwMDA=AHy5xc/640-02771261en_Masterfile.jpg"),
                        fit: BoxFit.cover)),
              ),
            ),
          ),
          PageViewModel(
            title: "",
            body: "Made In India",
            image: Center(
              child: Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://c8.alamy.com/comp/C5CR4T/3d-little-human-character-reading-a-news-paper-C5CR4T.jpg"),
                        fit: BoxFit.cover)),
              ),
            ),
          ),
        ],
        done: Text("done"),
        onDone: () async {
          SharedPreferences preferences = await SharedPreferences.getInstance();
          preferences.setBool("isIntroVisited", true);
          Navigator.pushReplacementNamed(context, 'Splash');
        },
        next: Text("Next"),
        showNextButton: true,
      ),
    );
  }
}
