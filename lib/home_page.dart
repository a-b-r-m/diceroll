import 'package:diceroll/image_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  late String selectImage;
  @override
  void initState() {
    super.initState();
    selectImage = imagePath[0];
  }

  void _changeDice (){
    setState(() {
      imagePath.shuffle(Random());
      //display the first image of the shuffled list
      selectImage = imagePath[0];
    });




  }
  @override
  Widget build(BuildContext context) {
    _changeDice();
    return  Scaffold(

      backgroundColor: Colors.green,

      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
          const  Text('Dice Roll',style: TextStyle(fontSize: 54,fontWeight: FontWeight.w700,color: Colors.white)),
            const   SizedBox(height: 110,),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  boxShadow:const [
                    BoxShadow(
                      color: Colors.black,
                      blurStyle: BlurStyle.outer,
                      spreadRadius: 1,
                      blurRadius: 6
                    ),
                  ],
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(

                    image:AssetImage( selectImage,),fit: BoxFit.fill
                  ),


                ),
              ),
            ),
         const   SizedBox(height: 150,),
            Container(
              height: 60,
              width: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.yellow
              ),
              child: CupertinoButton(onPressed:_changeDice,

                color: Colors.yellow,
                padding: EdgeInsets.all(8),
                borderRadius: BorderRadius.circular(15),




                child:const Text('Roll',style: TextStyle(fontSize: 28,fontWeight: FontWeight.w700,color: Colors.black)),
              ),
            )
          ],
        ),

      ),
    );
  }
}
