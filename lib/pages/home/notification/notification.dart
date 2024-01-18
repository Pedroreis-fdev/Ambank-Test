import 'package:flutter/material.dart';
import 'package:uibank/utilitarios/colors.dart';

class mynotification extends StatefulWidget {
  const mynotification({super.key});

  @override
  State<mynotification> createState() => _mynotificationState();
}

class _mynotificationState extends State<mynotification> {
  @override
  Widget build(BuildContext context) {
    return Container( margin: EdgeInsets.symmetric(vertical: 20),
      //comando para scrollar para a horizontal nos menus do uibank
      child:SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Wrap(
        direction: Axis.horizontal,
        children: [
        _income('Informe seu salário e', 'GANHE SCORE', 'com a AMBank'),
        _income('Em caso de duvidas', "entre em contato com nosso SAC", 'estamos prontos para te ouvir'),
        _income("Esta gostando do UiBank", "avalie o AMBank na loja", "de aplicativos de seu smartphone "),

        ],
      ),)
    );
  }
}

_income(String primarytext, String writeatext, String lastText){
  return Container(
    margin: EdgeInsets.only(left: 10, top: 10, right: 20),
    padding: EdgeInsets.all(24),
    decoration: BoxDecoration(color: cinza, 
    borderRadius: BorderRadius.circular(16),
    ),
   child: RichText(text: TextSpan(
    children: [
      TextSpan(text: "$primarytext \n", style: TextStyle(color: Colors.black, fontSize: 16),),
      TextSpan(text: "$writeatext \n", style: TextStyle(color: primaria, fontSize: 16)),
      TextSpan(text: "$lastText", style: TextStyle(color: Colors.black, fontSize: 16),),    
    ]
   )),
  );
}

var linkgooglestore = "https://play.google.com/store/search?q=UiBank&c=apps&hl=pt_BR&gl=US";