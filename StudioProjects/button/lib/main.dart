import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        title: 'Welcome to Flutter',
        theme: new ThemeData(
          brightness: Brightness.light,
        ),
        home: DisplayImage());
  }
}

class DisplayImage extends StatefulWidget {
  @override
  State<DisplayImage> createState() => _DisplayImageState();
}

class _DisplayImageState extends State<DisplayImage> {
  int index = 0;
  String showImg = "";
  String imgInfo = "";
  List<String> imgList = <String>["https://i.scdn.co/image/ab67616d0000b27330547ed34ae83541572751f7",
    "https://i.scdn.co/image/ab67616d00001e02d64128ee71f8a290d2db56b3",
    "https://i.scdn.co/image/ab67616d0000b273c78b2edbc9407cea20ccfb9f",
    "https://i.scdn.co/image/ab67616d0000b2731c884a66e326375f32b2f3f2"];

  List<String> imgText = ["HurtWave - Night Therapy I",
    "Bad Omens - The Death Of Piece Of Mind",
    "Architects - For Those That Wish To Exist",
    "Dayseeker - Dark Sun"];
  void lastImg() {
    setState(() {
      if(index == 0){
        index = 3;
      }else{
        index--;
      }
    });
  }
  void nextImg() {
    setState(() {
      if(index == 3){
        index = 0;
      }else{
        index++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    showImg = imgList[index];
    imgInfo = imgText[index];
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          title: Text(
            "ˋ407636520_Image",
          ),
        ),
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
              padding: EdgeInsets.symmetric(vertical:20),
              child: GestureDetector(
                  onTap: (){
                    final snackBar = new SnackBar(content: new Text(imgInfo));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                  child: Container(
                      height: 400,
                      width:400,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(showImg),
                        ),
                      )
                  )
              )
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children:[
            ElevatedButton(
              onPressed: () => lastImg(),
              child: Text("last",),
            ),
            SizedBox(width: 50),
            ElevatedButton(
              child: Text("next",),
              onPressed: () => nextImg(),
            ),
          ]),
        ]));
  }
}