class HomeModel {
  List<int> _minhaLista = [];

<<<<<<< HEAD
  Future<List<int>> _novaLista = Future(() => []);

  Future<List<int>> get novaLista {
    return _novaLista;
  }

  // chamada do metodo para o controller
  Future<List<int>> get popularLista => _popularLista();

  _popularLista() {
    _novaLista = Future.delayed(Duration(seconds: 2), () {
      return _minhaLista..addAll(List<int>.filled(10, 1));
    });
=======
  get novaLista {
    return _minhaLista;
  }

  Future<void> popularLista() async {
    await Future.delayed(Duration(seconds: 2));

    _minhaLista.addAll(List<int>.filled(10, 1));
>>>>>>> develop
  }
}
