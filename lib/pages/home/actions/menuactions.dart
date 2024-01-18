import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:uibank/utilitarios/colors.dart';

class menuItens extends StatefulWidget {
  const menuItens({super.key});

  @override
  State<menuItens> createState() => _menuItensState();
}

class _menuItensState extends State<menuItens> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      //comando para scrollar para a horizontal nos menus do uibank
      child:SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Wrap(
        direction: Axis.horizontal,
        children: [
          _itemMenu(icon: MdiIcons.clover, name: "Área Pix", isFirst: true),
          _itemMenu(icon: MdiIcons.barcode, name: "Pagar"),
          _itemMenu(icon: MdiIcons.cash, name: "transferir", isFirst: false),
          _itemMenu(icon: MdiIcons.piggyBankOutline, name: "cofrinho"),
          _itemMenu(icon: MdiIcons.cashCheck, name: "depositar"),
          _itemMenu(icon: MdiIcons.cellphone, name: "recarga"),
          _itemMenu(icon: MdiIcons.heartBoxOutline, name: "Doar")
        ],
      ),)
    );
  }
}

_itemMenu({
  required IconData icon,
  required String name,
  /*required void function*/
  bool? isFirst,
}) {
  return Container(
    padding: isFirst != null && isFirst == true ? EdgeInsets.only(right: 10, left:20): EdgeInsets.symmetric(horizontal: 7),
    child: Column(children:[
      Container(
        margin: EdgeInsets.only(bottom: 10),
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: cinza, borderRadius: BorderRadius.circular(48)),
        child: Icon(icon),
      ),
      Text(
        name,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
      )
    ]),
  );
}
void cleiton(){
  print("cleiton");}
  