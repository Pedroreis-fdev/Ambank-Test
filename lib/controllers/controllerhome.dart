import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

//controlador do eye appbar homepage
class controllerHomePage extends GetxController{
  var saldo = 720.520;
  bool eyesValue = true;

//função de mostrar o valor
  void showValue(){

    //eyesValue true // eyesValue false case !in start
    eyesValue = !eyesValue;

    if(eyesValue = true){
      Icon(MdiIcons.eyeOutline);
    }
    else{Icon(MdiIcons.eyeOff);
    saldo = "X" as double;}

  //comando tipo setstate de atualização constante
    update();
  }
}

class controlleralert extends GetxController{
  
  void alert(){
  
    
    Get.snackbar(
      /*title:*/ 'Converse com o nosso SAC' ,
      /*content: Text*/("Para enviar uma mensagem para nosso SAC \nentre em contato com o 📞WhatsApp: 55+(11)95791-5480"),
     /* textConfirm: 'OK',
      onConfirm: () {
        Get.back();*/
        snackPosition: SnackPosition.TOP,
        duration: Duration(seconds: 5),
        snackStyle: SnackStyle.FLOATING
        
      
    
    );
    update();
  }
}