import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class Bichos extends StatefulWidget {
  const Bichos({Key? key}) : super(key: key);

  @override
  _BichosState createState() => _BichosState();
}

class _BichosState extends State<Bichos> {
  AudioCache _audioCache = AudioCache(prefix: 'assets/audios/');

  _executar(String nomeAudio) {
    _audioCache.play(nomeAudio + ".mp3");
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _audioCache.loadAll([
      "cachorro.mp3", "gato.mp3","leao.mp3",
      "macaco.mp3","ovelha.mp3","vaca.mp3"
    ]);
  }

  @override
  Widget build(BuildContext context) {
    // double largura = MediaQuery.of(context).size.width;
    // double altura = MediaQuery.of(context).size.height;
    return GridView.count(
      crossAxisCount: 2,
      // scrollDirection: Axis.horizontal,
      childAspectRatio: MediaQuery.of(context).size.aspectRatio * 2,
      children: [
        GestureDetector(
          onTap: () {
            _executar("cachorro");
          },
          child: Image.asset("assets/images/cachorro.png"),
        ),
        GestureDetector(
          onTap: () {
            _executar("gato");
          },
          child: Image.asset("assets/images/gato.png"),
        ),
        GestureDetector(
          onTap: () {
            _executar("leao");
          },
          child: Image.asset("assets/images/leao.png"),
        ),
        GestureDetector(
          onTap: () {
            _executar("macaco");
          },
          child: Image.asset("assets/images/macaco.png"),
        ),
        GestureDetector(
          onTap: () {
            _executar("ovelha");
          },
          child: Image.asset("assets/images/ovelha.png"),
        ),
        GestureDetector(
          onTap: () {
            _executar("vaca");
          },
          child: Image.asset("assets/images/vaca.png"),
        ),
      ],
    );
  }
}
