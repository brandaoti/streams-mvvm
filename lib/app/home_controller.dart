import 'package:streams_mvvm/app/home_model.dart';

class HomeController {
  final _model = HomeModel();

  get lista => _model.novaLista;

  carregarLista() {
    return _model.popularLista;
  }
}
