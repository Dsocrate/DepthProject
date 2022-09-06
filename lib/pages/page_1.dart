import 'package:depth/pages/page_2.dart';
import 'package:flutter/material.dart';
class Home extends StatelessWidget {
    Home({Key? key}) : super(key: key);
   late double deviceWidth, deviceHeight;

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
                image: AssetImage('images/page1.png'),
              ),
            ),
            Positioned(
              top: 30,
                left: 30,
                child:Image(
                  image: AssetImage('images/Group.png'),
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
                        Text('Make Payments using QR Codes and URL',
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.white
                          ),),
                        SizedBox(height: 20,),
                        Text('Send and receive money from family, friends and even acquaintances seamlessly using QR codes and URL payment systems.',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white24
                          ),),
                        SizedBox(height: 30,),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(
                                builder:(BuildContext context){
                                  return Page2();
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
                                    color: Colors.white
                                ),),
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
