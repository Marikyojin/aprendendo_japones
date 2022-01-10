import 'package:aprendendo_idiomas/pages/bichos.dart';
import 'package:aprendendo_idiomas/pages/numeros.dart';
import 'package:aprendendo_idiomas/pages/cores.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Container(
        color: Color(0xFFFFFFFF),
        child: DefaultTabController(
        initialIndex: 0,
        length: 3,
        child: Scaffold(
             appBar: AppBar(
              //  backgroundColor: Color(0xFFD72C2D),
              //  foregroundColor: Color(0xFFECECEC),
        title: Text("Aprendendo Japonês"),
        bottom: TabBar( 
          labelColor: Color(0xFFECECEC),
          unselectedLabelColor: Color(0xFF1B1D1F),
          labelStyle: TextStyle(
            fontSize: 18,
          ),
          indicatorWeight: 4,
          indicatorColor:Color(0xFFECECEC) ,
          tabs: [
          Tab(
            text: "Bichos",
            icon: FaIcon(FontAwesomeIcons.cat),
          ),
          Tab(
            text: "Números",
            icon: FaIcon(FontAwesomeIcons.sortNumericDown),
          ),
          Tab(
            text: "Cores",
            icon:FaIcon(FontAwesomeIcons.paintBrush),
          )
        ]),
      ),
      body: TabBarView(children:  [
          Bichos(),
          Numeros(),
          Cores()
        ],),
        )
       
      ),
      )
    );
  }
  }
