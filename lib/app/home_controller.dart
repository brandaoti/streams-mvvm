import 'dart:async';

import 'package:streams_mvvm/app/home_model.dart';

class HomeController {
  final _model = HomeModel();

  StreamController<List<int>> streamController = StreamController();

  get getLista => _model.lista;

  carregarLista() {
    _model.popularLista();
    _model.lista.then((value) {
      streamController.add(value);
    });
  }
}
