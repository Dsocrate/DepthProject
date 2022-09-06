import 'package:depth/pages/Order_page.dart';
import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  Page3({Key? key}) : super(key: key);
  late double deviceHeight , deviceWidth;

  @override
  Widget build(BuildContext context) {
    deviceWidth = MediaQuery.of(context).size.width ;
    deviceHeight = MediaQuery.of(context).size.height ;
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              width: deviceWidth,
              height: deviceHeight,
              child: Image(
                image: AssetImage('images/page2.png'),
              ),
            ),
            Positioned(
                top: 22,
                left: 15,
                child:Image(
                  image: AssetImage('images/Traveling 1.png'),
                )),
            Positioned(
              top: deviceHeight * 0.38,
              child: Container(
                margin: EdgeInsets.all(15),
                width: 330,
                height: deviceHeight * 0.47,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.black54.withOpacity(0.5),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 60,),
                      Text('Achieve your financial goals by budgetting wisely',
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.white
                        ),),
                      SizedBox(height: 20,),
                      Text("Never go late on any utility payment again with Dashr ",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white24
                        ),),
                      Text("By Automating payments,all your utility bills get paid off seamless without breaking a sweat",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white24
                        ),),
                      SizedBox(height: 30,),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(
                              builder:(BuildContext context){
                                return OrderPage();
                              } ));
                        },
                        child: Container(
                          width: deviceWidth * 0.45,
                          height: 50,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.white,

                              ),
                              borderRadius: BorderRadius.circular(10)

                          ),
                          child:Center(
                            child: Text('Get Started',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold
                              ),),
                          ) ,

                        ),
                      ),
                      Center(
                        child: Row(
                          children: [
                            SizedBox(width: deviceWidth * 0.4,),
                            Text('.',
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.white54
                              ),),
                            Text('.',
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.white54
                              ),),
                            Text('.',
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.white
                              ),),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
                bottom: 5,
                left: deviceWidth * 0.4,
                right: deviceWidth * 0.4,
                child:Image(
                  image: AssetImage('images/clear.png'),
                )),

          ],

        ),
      ),

    );
  }
}
