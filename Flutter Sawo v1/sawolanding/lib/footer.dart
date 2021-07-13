import 'package:flutter/material.dart';


class Footer extends StatelessWidget {
  const Footer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/Vector 7@2x.png"),
            fit: BoxFit.cover,
          ),
      ),
      child: Container(
      child: Column(
        children: [
        SizedBox(height: 240,),
        Container(
          alignment: Alignment.topCenter,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [ 
          
            Text("Support",textAlign: TextAlign.left,style: TextStyle(fontSize: 20,color: Colors.white)),
        Text("To get in touch with us right to us at \ncontact@product.com",textAlign: TextAlign.justify,style: TextStyle(fontSize: 20,color: Colors.white)),
        SizedBox(height:20),
        Text("Or speak to our customer representative at ",textAlign: TextAlign.justify,style: TextStyle(fontSize: 20,color: Colors.white)),
        FlatButton(
           onPressed: () => {},
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Text("Chatbot"),
              ),
              textColor: Colors.black,
              color: Color(0xffffa500)),
        ],),),
        SizedBox(height:120),
        Text("Quick Links",textAlign: TextAlign.left,style: TextStyle(fontSize: 20,color: Colors.white)),

        Padding(
          padding: const EdgeInsets.only(top:10),
          child: Row(
            
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("• Faq",style: TextStyle(color: Color(0xffffa500),fontSize: 20),textAlign: TextAlign.left),
                Text("• Pricing",style: TextStyle(color: Color(0xffffa500),fontSize: 20),textAlign: TextAlign.left),
                Text("• Docs",style: TextStyle(color: Color(0xffffa500),fontSize: 20),textAlign: TextAlign.left),
                Text("• Resources",style: TextStyle(color: Color(0xffffa500),fontSize: 20),textAlign: TextAlign.left),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("• Career",style: TextStyle(color: Color(0xffffa500),fontSize: 20),textAlign: TextAlign.left),
                Text("• Community",style: TextStyle(color: Color(0xffffa500),fontSize: 20),textAlign: TextAlign.left),
                Text("• Privacy Policy",style: TextStyle(color: Color(0xffffa500),fontSize: 20),textAlign: TextAlign.left),
                Text("• Sposorship Program",textAlign: TextAlign.left,style: TextStyle(color: Color(0xffffa500),fontSize: 20),),
              ],
            )
          ],),
        ),
        SizedBox(height: 180,),
        Text("Follow Us",textAlign: TextAlign.left,style: TextStyle(fontSize: 20,color: Colors.white)),

        Padding(
          padding: const EdgeInsets.only(top:10),
          child: Row(
            
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LogoButton(assetUrl: "assets/images/SM-LinkedIn.png"),
              LogoButton(assetUrl: "assets/images/SM-Instagram.png"),
              LogoButton(assetUrl: "assets/images/SM-Facebook.png"),
              LogoButton(assetUrl: "assets/images/SM-GitHub.png"),
              LogoButton(assetUrl: "assets/images/SM-Twitter.png"),
            ],
          )
        ),
        SizedBox(height: 60,),
      ])
      
      ,),
    );
  }
}

class LogoButton extends StatelessWidget {
  final String assetUrl;
  LogoButton({Key? key,this.assetUrl=""}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
             ElevatedButton(onPressed: ()=>{}, child: Image.asset(assetUrl)
             ,style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.transparent)),);
  }
}