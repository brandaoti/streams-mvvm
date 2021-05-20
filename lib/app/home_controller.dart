import 'package:streams_mvvm/app/home_model.dart';

class HomeController {
  final _model = HomeModel();

  List<int> get lista => _model.novaLista;

  Future<void> carregarLista() async {
    await _model.popularLista();
  }
}
