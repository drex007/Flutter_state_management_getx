import 'package:get/get.dart';

class TapController extends GetxController {
int _x = 0;
int get x => _x;
RxInt _y = 0.obs;
RxInt get y =>_y;

 void increaseX(){
   _x++;
   update();
 }
  void decreaseX(){
   _x--;
   print(_x);
   update();
 }
   void increaseY(){
   _y.value++;
   print(_y);
   
 }

   void decreaseY(){
   _y.value--;
   print(_y);
   
 }

  void resetX(){
  if(_x.isGreaterThan(0)){
    _x = _x - _x ;
  } 
  else {
    _x = (-_x) - (-_x);
  }
  print(_x);
  update();
 }

}

