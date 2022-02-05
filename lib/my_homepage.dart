import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/tap_controller.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
   TapController controller = Get.put(TapController());

    return Scaffold(
      appBar: AppBar(
        title: Text("New Home"),
      ),
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
            GetBuilder <TapController>(builder: (_) {
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
                controller.increaseX();

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
                    Text("Tap", style: TextStyle(
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
                    Text("Tap", style: TextStyle(
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
                    Text("Tap", style: TextStyle(
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
                    Text("Tap", style: TextStyle(
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