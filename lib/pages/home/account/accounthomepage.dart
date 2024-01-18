import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:uibank/controllers/controllerhome.dart';

class account extends StatefulWidget {
  const account({super.key});

  @override
  State<account> createState() => _accountState();
}

class _accountState extends State<account> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
        margin: EdgeInsets.all(20),decoration: ShapeDecoration.fromBoxDecoration(BoxDecoration(borderRadius: BorderRadius.circular(16))),
        child: Column(
          children: [_accoountfunction(),
           _moneyaccount()],
        ));
  }
}

_accoountfunction() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    
    children: [
      Text(
        "Conta",
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
      ),
      Icon(MdiIcons.chevronRight),
    ],
  );
}

_moneyaccount() {
  return GetBuilder<controllerHomePage>(
    init: controllerHomePage(),
    builder: (controller) {
      return Row(mainAxisAlignment: MainAxisAlignment.start, children: [
        Text("R\$ ${controller.saldo}",
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontSize: 20)),
      ]);
    },
  );
}
