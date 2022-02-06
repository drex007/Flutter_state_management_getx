import 'package:get/get.dart';

class ListController {
RxList _list = [].obs ;
RxList get list =>_list;



void setList(int x){
  _list.add(x);

}


void unsetList(int x){
  _list.removeLast();

}
}