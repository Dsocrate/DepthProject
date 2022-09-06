import 'package:depth/Widget/network.dart';
import 'package:depth/Widget/recipient.dart';
import 'package:depth/pages/Data_page.dart';
import 'package:depth/pages/page_3.dart';
import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget {
   const OrderPage({Key? key}) : super(key: key);


  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  late double deviceHeight , deviceWidth;
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
                  return Page3();
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
                  onTap: (){},
                  child: Container(
                    width: deviceWidth * 0.45,
                    height: 35,
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(10)

                    ),
                    child:Center(
                      child: Text('Airtime',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),),
                    ) ,

                  ),
                ),
                SizedBox(width: 12,),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                        builder:(BuildContext context){
                          return data();
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
                      child: Text('Data',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black26,
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
            Text('Choose a Recipient',
              style: TextStyle(color: Colors.black12, fontSize: 20),),
            Recipient(Name: 'My number',),
            Recipient(Name: 'My Contact'),
            Recipient(Name: 'New Number'),
            SizedBox(height: 25,),
            Text('Enter Phone Number',
              style: TextStyle(color: Colors.black12, fontSize: 20),),
            TextFormField(
                decoration:InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Phone Number',)

                ),
            SizedBox(height: 68,),
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




          ],
        ),
      )
    );
  }
}
