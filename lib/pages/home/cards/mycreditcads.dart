import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:uibank/utilitarios/colors.dart';

class mycreditcards extends StatefulWidget {
  const mycreditcards({super.key});

  @override
  State<mycreditcards> createState() => _mycreditcardsState();
}

class _mycreditcardsState extends State<mycreditcards> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:EdgeInsets.all(15),
      margin: EdgeInsets.fromLTRB(16, 10, 25, 10),
      decoration: BoxDecoration(
        color: cinza, borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
           Icon(MdiIcons.cardAccountDetailsOutline, color: Colors.black),
           Text("   Meus Cartões"),

          ],
        ),
    );
  }
}
