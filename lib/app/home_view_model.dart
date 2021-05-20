import 'dart:async';

import 'package:streams_mvvm/app/home_model.dart';

class HomeViewModel {
  final _model = HomeModel();

  StreamController<List<int>> _streamController = StreamController();

  get stream => _streamController.stream;

  carregarLista() {
    _model.popularLista();
    _model.lista.then((value) {
      _streamController.add(value);
    });
  }
}
