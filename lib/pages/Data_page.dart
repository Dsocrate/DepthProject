import 'package:depth/Widget/clip_pics.dart';
import 'package:depth/pages/Order_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:depth/Widget/recipient.dart';
import 'package:depth/Widget/network.dart';

class data extends StatefulWidget {
  const data({Key? key}) : super(key: key);

  @override
  _dataState createState() => _dataState();
}

class _dataState extends State<data> {
  late double deviceWidth , deviceHeight;

  @override
  Widget build(BuildContext context) {
    deviceWidth = MediaQuery.of(context).size.width ;
    deviceHeight = MediaQuery.of(context).size.height ;
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 60,
          leading: IconButton(
            color: Colors.indigo,
            icon: Icon(Icons.navigate_before),
            iconSize: 25,
            onPressed: (){
              Navigator.pop(context, MaterialPageRoute(
                  builder:(BuildContext context){
                    return OrderPage();
                  } ));
            },
          ),
          backgroundColor: Colors.white,
          title: Center(
              child: Text('Airtime & Data',
                style: TextStyle(color: Colors.black),)),
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
              Row(
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context, MaterialPageRoute(
                          builder:(BuildContext context){
                            return OrderPage();
                          } ));
                    },
                    child: Container(
                      width: deviceWidth * 0.45,
                      height: 35,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)

                      ),
                      child:Center(
                        child: Text('Airtime',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black26,
                              fontWeight: FontWeight.bold
                          ),),
                      ) ,

                    ),
                  ),
                  SizedBox(width: 12,),
                  GestureDetector(
                    onTap: (){},
                    child: Container(
                      width: deviceWidth * 0.45,
                      height: 35,
                      decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.circular(10)

                      ),
                      child:Center(
                        child: Text('Data',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                          ),),
                      ) ,

                    ),
                  ),


                ],
              ),
              Text('Select Network',
                style: TextStyle(color: Colors.black12, fontSize: 18),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Network(NetworkImage: 'images/mtn.png'),
                  Network(NetworkImage: 'images/glo.png'),
                  Network(NetworkImage: 'images/9mobile.png'),
                  Network(NetworkImage: 'images/airtel.png')
                ],
              ),
              SizedBox(height: 25,),
              Text('Select Accounts',
                style: TextStyle(color: Colors.black12, fontSize: 18),),
              TextFormField(
                  decoration:InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Select Account',
                      suffixIcon: Icon(Icons.arrow_drop_down_sharp,size: 20,)

                  )
              ),
              Text('Choose a data bundle',
                style: TextStyle(color: Colors.black12, fontSize: 18),),
              TextFormField(
                  decoration:InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Select Account',
                      suffixIcon: Icon(Icons.arrow_drop_down_sharp,size: 20,)

                  )
              ),
              Text('Select Data bundle',
                style: TextStyle(color: Colors.black12, fontSize: 20),),
              Recipient(Name: 'My number',),
              Recipient(Name: 'My Contact'),
              SizedBox(height: 25,),
              Text('Dashr friend',
                style: TextStyle(color: Colors.black, fontSize: 15),),
              Expanded(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Clip(Name1: 'All', Image: 'images/Group 632.png', Name2:'Contacts' ),
                    Clip(Name1: 'Daniel', Image: 'images/pics.png', Name2: 'Oladunioye'),
                    Clip(Name1: 'Cynthia', Image: 'images/pics.png', Name2: 'Obianuaye'),
                    Clip(Name1: 'Destiny', Image: 'images/pics.png', Name2: 'Okon'),
                    Clip(Name1: 'Damola', Image: 'images/pics.png', Name2: 'Babatunde'),
                    Clip(Name1: 'Recee', Image: 'images/pics.png', Name2: 'James'),
                    Clip(Name1: 'Raheem', Image: 'images/pics.png', Name2: 'Sterling'),
                    Clip(Name1: 'Gabriel', Image: 'images/pics.png', Name2: 'Jesus'),
                  ],
                ),
              ),

              Container(
                width: deviceWidth * 0.95,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(13)

                ),
                child:Center(
                  child: Text('Pay Now',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                    ),),
                ) ,

              ),
              SizedBox(height: 40,),




            ],
          ),
        )
    );
  }
}
