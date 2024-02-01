// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:instagram_mini_post_app/ig_widget.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  List<Map> listMap = [
    {
      "nameSurname": "@nazli",
      "imageUrl":
          "https://storage.googleapis.com/postcrafts-public-content/headshotpro/reviews/654ab53022e37754a0528970-654ac20f518ba421eb8ee7a4.png?X-Goog-Algorithm=GOOG4-RSA-SHA256&X-Goog-Credential=firebase-adminsdk-hu3sa%40stockai-362303.iam.gserviceaccount.com%2F20240131%2Fauto%2Fstorage%2Fgoog4_request&X-Goog-Date=20240131T093347Z&X-Goog-Expires=518400&X-Goog-SignedHeaders=host&X-Goog-Signature=31b2dc996d4b2dd7f9e8ea2ffb279a11ebb4754bcdba1df69be38632dc77d74c8123cacf556f47d9b0514e92ee341b82d9754cfaebc9ec837b1e5e62c1c27063a62461d04db352a6d55f73478d35f24fe22c05dc8a096937e36b535e57333b1ab6d00e307b399a849a3d28cc0836904eda6068e961a1e99519f133a0f37fff81ec1fa9df2d618fbb455d22b9098a440236087613871954509f50ed7e2939567a09bd77ced9837051e3c2d2511f6062bdd21133d4e706bf21ed4e21c8c9d5ea54ff5c0e14f112fc81733e8e02afec7de8125fea8a46c1c5a6fbf389f6738ec21e0ebebb3d94ddde657a663ea6e4127b58475843ea8bf89342324ba43428206f4e",
      "photos":
          "https://plus.unsplash.com/premium_photo-1666256629471-32b4eedd9638?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=300&ixid=MnwxfDB8MXxyYW5kb218MHx8fHx8fHx8MTcwNjczNzk1Mg&ixlib=rb-4.0.3&q=80&w=300"
    },
    {
      "nameSurname": "@ayse",
      "imageUrl":
          "https://storage.googleapis.com/postcrafts-public-content/headshotpro/reviews/6537731d5b30225cc4838e94-653782065b30225cc48397c2.png?X-Goog-Algorithm=GOOG4-RSA-SHA256&X-Goog-Credential=firebase-adminsdk-hu3sa%40stockai-362303.iam.gserviceaccount.com%2F20240131%2Fauto%2Fstorage%2Fgoog4_request&X-Goog-Date=20240131T093347Z&X-Goog-Expires=518400&X-Goog-SignedHeaders=host&X-Goog-Signature=4847fbd18ab613f1f312d1598fab29558fca05a8e1e0ab5a43e66c2a381f2e380948168a8d6a310c309feee623718577a7c2db247776926e13535312a6830f7701a8e1dea664895a5724ee6392a91af32619db32c405f24077c2dddf421dc7b6fac1e795a1e944bdcbaa9cdd1f52736fe25e67c1b59d7456a64ffb7d4f8fab477e80381dacf6305715b6c93cae6ccee50a24c337e450c6226d1cd644cb5ddc581548e7607c0eb0ff0752931b45bdcc10d44ce6420f41a54e3fc59abb52aebb82c8bf42b36f453d8736b1a3eb5a6ed0a421ef664f1c3837d667f2091e55ca40f2208b0e3b0d5bb96c658acea850978cc74f41891a4774deda0fbafb6652d2dd2d",
      "photos":
          "https://images.unsplash.com/photo-1704140159556-88e2e6177def?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=300&ixid=MnwxfDB8MXxyYW5kb218MHx8fHx8fHx8MTcwNjczNDE3NA&ixlib=rb-4.0.3&q=80&w=300"
    },
    {
      "nameSurname": "@emre",
      "imageUrl":
          "https://i.pinimg.com/564x/98/51/1e/98511ee98a1930b8938e42caf0904d2d.jpg",
      "photos":
          "https://plus.unsplash.com/premium_photo-1699534956937-8be2c4c68e03?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=1080&ixid=MnwxfDB8MXxyYW5kb218MHx8fHx8fHx8MTcwNjc3ODY2Mw&ixlib=rb-4.0.3&q=80&w=1920"
    },
    {
      "nameSurname": "@ahmet",
      "imageUrl": null,
      "photos":
          "https://images.unsplash.com/photo-1703957711009-aee8f7918503?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=1080&ixid=MnwxfDB8MXxyYW5kb218MHx8fHx8fHx8MTcwNjc3ODgxNQ&ixlib=rb-4.0.3&q=80&w=1920"
    }
  ];
  MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Instagram',
            style: TextStyle(
              fontSize: 25,
              fontFamily: "PoppinsRegular",
            ),
          ),
        ),
        //EKRANIN NASIL SIRALANDIĞINI GÖSTER
        body: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return IgWidget(
                  nameSurname: listMap[index]["nameSurname"],
                  imageUrl: listMap[index]["imageUrl"],
                  photos: listMap[index]["photos"],
                );
              },
              itemCount: listMap.length,
            )),
      ),
    );
  }
}
