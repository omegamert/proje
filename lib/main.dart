import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:proje/utils/color.dart';
import 'package:proje/utils/styles.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.W_background,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 100),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.network(
                    "https://upload.wikimedia.org/wikipedia/tr/d/d3/Sabanc%C4%B1_%C3%9Cniversitesi_logosu.jpg",
                    width: 200,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 400,
                ),
                Text(
                  "SUmate",
                  style: WelcomeText,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedButton(
                    onPressed: buttonPressed,
                    style: ElevatedButton.styleFrom(
                      elevation:1,
                    ),
                    child: Text(
                      "Login",
                      style: blacknewTexts,
                    )

                ),
                ElevatedButton(
                    onPressed: buttonPressed,
                    style: ElevatedButton.styleFrom (
                      primary: Colors.lightBlueAccent,
                      onPrimary: Colors.blueAccent,
                      shadowColor: Colors.black,
                      elevation: 5,
                      //shape: const CircleBorder(borderRadius: BorderRadius.all(Radius.elliptical(30, 10))),
                    ),
                    child: Text(
                      "Sign Up",
                      style: blacknewTexts,
                    )),
              ],
            ),
            SizedBox(
              height: 18,
            ),
            // height: 125,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Image.network(
                  "https://img-s2.onedio.com/id-60e75235f8d859493a1b5511/rev-0/w-1200/h-442/f-jpg/s-cbd31b97e56d38b14b83ce93a20c1e6e10437371.jpg",
                  width: MediaQuery.of(context).size.width,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void buttonPressed() {
    print("Button tapped");
  }
}
