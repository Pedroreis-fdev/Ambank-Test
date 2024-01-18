import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:uibank/pages/home/account/accounthomepage.dart';
import 'package:uibank/pages/home/actions/menuactions.dart';
import 'package:uibank/pages/home/cards/mycreditcads.dart';
import 'package:uibank/pages/home/model/header.dart';
import 'package:uibank/pages/home/notification/notification.dart';
import 'package:uibank/utilitarios/colors.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaria,

        // backgroundColor: backgroundColor,
        appBar: _AppBar(),
        body: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Column(children: [
              _AppBar(),
              Header(),
              Divider(),
              mycreditcards(),
              Divider(),
              account(),
              Divider(thickness: 1.6,),
              menuItens(),
              //divisor(espessura: 1.6)
              Divider(thickness : 1.6),
              mynotification(),
            ]),
            
            
          ),
        ));
  }
}

PreferredSize _AppBar() {
  return PreferredSize(
      child: AppBar(
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      preferredSize: const Size.fromHeight(0));
}
