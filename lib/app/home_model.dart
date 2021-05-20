
class HomeModel {
  List<int> _minhaLista = [];

  Future<List<int>> lista = Future(() => []);

  popularLista() {
    lista = Future.delayed(Duration(seconds: 2), () {
      return _minhaLista..addAll(List<int>.filled(10, 1));
    });
  }
}
