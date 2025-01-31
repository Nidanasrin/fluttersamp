import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:nidflutter/dio%20api/utiles/colors.dart';
import 'package:nidflutter/dio%20api/utiles/const%20snackbar.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../controller/product controller.dart';

void main(){
  runApp(GetMaterialApp(home: DioHome(),));
}
class DioHome extends StatelessWidget {
 DataController controller = Get.put(DataController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dio Home"),
        backgroundColor: MyColors.scColor,
      ),
       backgroundColor: MyColors.bgColor,
      floatingActionButton:
    Obx(() =>controller.isNetConnected.value ? FloatingActionButton(
    onPressed: (){
      controller.isListDown.value
    ? controller.scrollToUp()
    : controller.scrollToDown();
    },
    child: FaIcon(controller.isListDown.value
    ? FontAwesomeIcons.arrowUp
    : FontAwesomeIcons.arrowDown),
    ):Container()),
      body: Obx(()=>
    SizedBox(
    width: double.infinity,
    height: double.infinity,
    child: controller.isNetConnected.value == true
    ? (controller.isLoading.value
    ? Center(
    child: CircularProgressIndicator())
    : getData())
      : Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
Icon(Icons.signal_wifi_statusbar_connected_no_internet_4,size: 60,),
          MaterialButton(onPressed: ()async{
            if(controller.isNetConnected.value == true){
              controller.fetchData();
            }else{
              showCustomSnackbar(context);
            }
          })
        ],
      ),
    ),
    )),

    );
  }


 RefreshIndicator getData() {
    return RefreshIndicator(
      child: ScrollablePositionedList.builder(
        itemScrollController: controller.scrollController,
          itemCount: controller.datas.length, itemBuilder: (context,index){
          var data = controller.datas[index];
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: MyColors.bgColor,
                child: Text(data.id.toString()),
              ),
              title: Text(data.title!),
              subtitle: Text(data.body!),
            ),

          );
      }),
      onRefresh: (){
        return controller.fetchData();
      },
    );
 }
}
