import 'package:cozinha/models/receita.dart';
import 'package:flutter/material.dart';

class Detalhes extends StatelessWidget {
  late final Receita receita;

  Detalhes({Key? key, required this.receita}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _construirDetalhes();
  }

  Widget _construirDetalhes() {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          _construirImagemDetalhes(receita.foto),
          _construirTituloDetalhes(receita.titulo),
          _construirLinhaIconesDetalhes(
              '${receita.porcoes} porções', receita.tempoPreparo),
          _construirSubtituloDetalhes('Ingredientes'),
          _construirTextoDetalhes(receita.ingredientes),
          _construirSubtituloDetalhes('Modo de Preparo'),
          _construirTextoDetalhes(receita.modoPreparo),
        ],
      ),
      appBar: _construirAppBar(),
    );
  }

  Widget _construirImagemDetalhes(image) {
    return Image.asset(image);
  }

  Widget _construirTituloDetalhes(titulo) {
    return Center(
      child: Text(
        titulo,
        style: TextStyle(color: Colors.deepOrange, fontSize: 30),
      ),
    );
  }

  Widget _construirLinhaIconesDetalhes(rendimento, tempo_preparo) {
    return Row(children: <Widget>[
      _construirColunaIconesDetalhes(Icons.restaurant, rendimento),
      _construirColunaIconesDetalhes(Icons.timer, tempo_preparo)
    ]);
  }

  Widget _construirColunaIconesDetalhes(icone, texto) {
    return Expanded(
      child: Column(
        children: <Widget>[
          Icon(
            icone,
            color: Colors.deepOrange,
          ),
          Text(
            texto,
            style: TextStyle(
                color: Colors.deepOrange, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }

  Widget _construirSubtituloDetalhes(subtitulo) {
    return Center(
        child: Text(
      subtitulo,
      style: TextStyle(fontSize: 20),
    ));
  }

  Widget _construirTextoDetalhes(texto) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Text(
        texto,
      ),
    );
  }

  AppBar _construirAppBar() {
    return AppBar(centerTitle: true, title: Text('Cozinhando em Casa'));
  }
}
