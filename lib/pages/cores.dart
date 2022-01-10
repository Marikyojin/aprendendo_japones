import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class Cores extends StatefulWidget {
  const Cores({ Key? key }) : super(key: key);

  @override
  _CoresState createState() => _CoresState();
}

class _CoresState extends State<Cores> {
 AudioCache _audioCache = AudioCache(prefix: 'assets/audios/');

  _executar(String nomeAudio) {
    _audioCache.play(nomeAudio + ".mp3");
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _audioCache.loadAll([
      "azul.mp3", "verde.mp3","vermelho.mp3",
      "amarelo.mp3","laranja.mp3","rosa.mp3"
    ]);
  }
  @override
  Widget build(BuildContext context) {
    return  GridView.count(
      crossAxisCount: 2,
      // scrollDirection: Axis.horizontal,
      childAspectRatio: MediaQuery.of(context).size.aspectRatio * 2,
      children: [
        GestureDetector(
          onTap: () {
            _executar("azul");
          },
          child: Image.asset("assets/images/azul.png"),
        ),
        GestureDetector(
          onTap: () {
            _executar("vermelho");
          },
          child: Image.asset("assets/images/vermelho.png"),
        ),
        GestureDetector(
          onTap: () {
            _executar("verde");
          },
          child: Image.asset("assets/images/verde.png"),
        ),
        GestureDetector(
          onTap: () {
            _executar("amarelo");
          },
          child: Image.asset("assets/images/amarelo.png"),
        ),
        GestureDetector(
          onTap: () {
            _executar("rosa");
          },
          child: Image.asset("assets/images/rosa.png"),
        ),
        GestureDetector(
          onTap: () {
            _executar("laranja");
          },
          child: Image.asset("assets/images/laranja.png"),
        ),
      ],
    );
  }
}