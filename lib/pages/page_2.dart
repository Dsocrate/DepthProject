import 'package:depth/pages/page_3.dart';
import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  Page2({Key? key}) : super(key: key);
  late double deviceWidth , deviceHeight ;

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
                left: 30,
                child:Image(
                  image: AssetImage('images/Achieving a Goal 1.png'),
                )),
            Positioned(
              top: deviceHeight * 0.38,
              child: Container(
                margin: EdgeInsets.all(15),
                width: 330,
                height: deviceHeight * 0.47,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.black26.withOpacity(0.5),
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
                      Text("lets's help you spend wisely by giving you the superpower to create a swift and detailed list. ",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white24
                        ),),
                      Text("You create the budget, we automate and keep you accountable",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white24
                        ),),
                      SizedBox(height: 30,),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(
                              builder:(BuildContext context){
                                return Page3();
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
                                  color: Colors.white
                              ),),
                            Text('.',
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.white54
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
