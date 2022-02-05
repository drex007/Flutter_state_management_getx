import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/tap_controller.dart';
import 'package:getx/my_homepage.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
  TapController controller = Get.find();
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Obx(()=> Container(
            margin: const EdgeInsets.all(20),
            width: double.maxFinite,
            height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35),
                  color: Colors.black,
              ),
              child: Center(
              child: 
              Text("Value of Y:"  +  "  " +    controller.y.value.toString(), style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            
            ),
            )
            ),
         
        ),),
       
        GestureDetector(
              onTap: (){
                controller.increaseY();
                
              },
              child: Container(
                  margin: const EdgeInsets.all(20),
                  width: double.maxFinite,
                  height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35),
                        color: Colors.black,
                    ),
                    child: Center(
                    child: 
                    Text("IncreaseY", style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
            
                  ),
                  )
                  ),
               
              ),
            ),
        GestureDetector(
              onTap: (){
                controller.decreaseY();
              },
              child: Container(
                  margin: const EdgeInsets.all(20),
                  width: double.maxFinite,
                  height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35),
                        color: Colors.black,
                    ),
                    child: Center(
                    child: 
                    Text("DecreaseY", style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
            
                  ),
                  )
                  ),
               
              ),
            ),
        GestureDetector(
              onTap: (){
                Get.to(()=>MyHomePage());
              },
              child: Container(
                  margin: const EdgeInsets.all(20),
                  width: double.maxFinite,
                  height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35),
                        color: Colors.black,
                    ),
                    child: Center(
                    child: 
                    Text("Go back Home", style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
            
                  ),
                  )
                  ),
               
              ),
            ),
        
          
        ],
      ),
    );
  }
}