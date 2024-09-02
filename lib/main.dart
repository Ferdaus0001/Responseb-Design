import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Obtain the width and height of the screen
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text('Responsive Design Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // A responsive container that adapts its size based on screen width
            Container(
              width: screenWidth * 0.8,
              height: screenHeight * 0.3,

              child: Center(
                child: Text(
                  ' FLUTTER WEB THE BASIC',
                  style: TextStyle(
                    fontSize: screenWidth * 0.05, // Responsive font size
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            // A responsive button
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'Responsive Button',

                style: TextStyle(fontSize: screenWidth * 0.04,color: Colors.blue, ),
              ),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(
                  horizontal: screenWidth * 0.1,
                  vertical: screenHeight * 0.02,
                ),
              ),
            ),
            SizedBox(height: 20),
            // A responsive text widget
            Text(

              'This text scales based on screen size  '
              ' And this page is shoport all Screen Siaze '
              ' And thsi is a ostand  Assistant '
              ,


              style: TextStyle(fontSize: screenWidth * 0.045),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
