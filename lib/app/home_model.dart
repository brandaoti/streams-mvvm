// class HomeModel {
//   List<int> _minhaLista = [];

//   get novaLista {
//     return _minhaLista;
//   }

//   Future<void> popularLista() async {
//     await Future.delayed(Duration(seconds: 2));

//     _minhaLista.addAll(List<int>.filled(10, 1));
//   }
// }
class HomeModel {
  List<int> _minhaLista = [];

  Future<List<int>> lista = Future(() => []);

  popularLista() {
    lista = Future.delayed(Duration(seconds: 2), () {
      return _minhaLista..addAll(List<int>.filled(10, 1));
    });
  }
}
