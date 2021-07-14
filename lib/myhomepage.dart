import 'package:flutter/material.dart';
import 'package:furniture_app/screens/home/home_screen.dart';
import 'package:lottie/lottie.dart';
import 'package:shimmer/shimmer.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    // set time to load the new page
    Future.delayed(const Duration(seconds: 7), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomeScreen()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 400,
            width: 400,
            child: Lottie.asset("assets/ali.json")
          ),
          // const SizedBox(height: 20),
          // Shimmer.fromColors(
          //   baseColor: Color(0xff7f00ff),
          //   highlightColor: Color(0xffe100ff),
          //   child: Container(
          //     child: Text(
          //       "Furniture Apps",
          //       style: TextStyle(
          //           fontSize: 50.0,
          //           fontFamily: '',
          //           fontStyle: FontStyle.italic),
          //     ),
          //   ),
          // ),
          const Text("Lintang Purnama 19120110028",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  fontStyle: FontStyle.italic)),
          // const Text("NIM : 19110110037",
          //     style: TextStyle(
          //         fontSize: 20,
          //         color: Colors.amber,
          //         fontWeight: FontWeight.bold,
          //         fontStyle: FontStyle.italic)),
        ],
      ),
    ));
  }
}
