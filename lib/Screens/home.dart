import 'package:af_exam_1/Model/api.dart';
import 'package:flutter/material.dart';

import '../Model/api_model.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "News",
        ),
        centerTitle: true,
      ),
      // body: FutureBuilder(
      //     future: api_helper.api.getdata(),
      //     builder: (context, AsyncSnapshot snapshot) {
      //       if (snapshot.hasError) {
      //         return Text("${snapshot.error}");
      //       } else if (snapshot.hasData) {
      //         api_model? apimodel = snapshot.data;
      //         return Container(
      //           child: Text("${apimodel?.hii['data'][0]['title']}"),
      //         );
      //       }
      //       return Container();
      //     }));
      body: ListView.builder(
        itemCount: 8,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, 'details');
          },
          child: Container(
            margin: EdgeInsets.all(20),
            height: 250,
            width: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRls7GbEsZqH_jY5Vz2W27SqSbJcOPLEel7cPQRndKSsA&s"),
                  fit: BoxFit.cover),
            ),
          ),
        ),
      ),
    );
  }
}
