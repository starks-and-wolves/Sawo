import 'package:flutter/material.dart';

class FeatureCard extends StatelessWidget {
  final String title;
  FeatureCard({Key? key, this.title = "Feature X"})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(50, 20, 50, 0),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            Text(
              "Some quick example text, to build on the card title and make up the bulk of card's content.",
              style: TextStyle(fontSize: 18, height: 1.5),
            ),
            SizedBox(height: 20),
            FlatButton(
                onPressed: () => {},
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 13),
                  child: Text("Go Somewhere"),
                ),
                textColor: Colors.black,
                color: Color(0xffffa500))
          ],
        ),
      ),
    );
  }
}
