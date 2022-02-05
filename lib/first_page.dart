import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/tap_controller.dart';
import 'package:getx/my_homepage.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TapController controller = Get.find();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Get.to(()=>MyHomePage());
        }, icon: Icon(Icons.arrow_back_ios, color: Colors.black,)),
      ),
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Column(
          children: [
            GetBuilder<TapController>(builder: (_){
              return Container(
                  margin: const EdgeInsets.all(20),
                  width: double.maxFinite,
                  height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35),
                        color: Colors.black,
                    ),
                    child: Center(
                    child: 
                    Text(controller.x.toString(), style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
            
                  ),
                  )
                  ),
               
              );
            }),
            GestureDetector(
              onTap: (){
               controller.decreaseX() ;
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
                      Text("decreaseX", style: TextStyle(
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
      ),
    );
  }
}

