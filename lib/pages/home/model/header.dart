import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:uibank/controllers/controllerhome.dart';
import 'package:uibank/utilitarios/colors.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: primaria,
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _profile(),
            options(),
          ],
        ),
        SizedBox(
          height: 26,
        ),
        _welcome(),
        SizedBox(
          height: 10,
        ),
      ]),
    );
  }
}

_profile() {
  return GestureDetector(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.only(left: 20, top: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80),
          color: secundario,
        ),
        child:Row( mainAxisAlignment: MainAxisAlignment.start,
        children: [
          IconButton(
          onPressed: () {},
          icon: Icon(MdiIcons.accountOutline, color: Colors.white,),
        ),
        Text("Olá , PedroReis     ",
        style: TextStyle(color: cinza),)
        ],) 
        
      ));
}

options() {
  return Row(
    children: [
      GetBuilder<controllerHomePage>(
          init: controllerHomePage(),
          builder: (controllerHomePage) {
            return IconButton(
                onPressed: (){},
                icon: Icon(
            controllerHomePage.eyesValue ? MdiIcons.eyeOutline: MdiIcons.eyeOff,
                  color: Colors.white,
                ));
          }),

           IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.notifications,
            color: Colors.white,
          )),
      
          GetBuilder<controlleralert>(
            init: controlleralert(),
            builder: (controlleralert){
              return IconButton(
              icon: Icon(
            MdiIcons.helpCircleOutline,
            color: Colors.white,
            
          ), onPressed: controlleralert.alert,
      );
 } ),

    ],
  );
}

_welcome() {
  return Container(
    margin: EdgeInsets.only(left: 20, top: 15),
    
    child: Text("Bem vindo ao AMBank", style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 19),),
                alignment: Alignment.topLeft,
            
  );
}


