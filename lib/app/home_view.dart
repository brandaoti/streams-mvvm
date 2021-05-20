import 'package:flutter/material.dart';
import 'package:streams_mvvm/app/home_controller.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final controller = HomeController();

  @override
  Widget build(BuildContext context) {
    //
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: StreamBuilder<List<int>>(
              stream: controller.stream,
              builder: (context, snapshot) {
                switch (snapshot.connectionState) {
                  case ConnectionState.none:

                  case ConnectionState.waiting:
                    return Center(
                      child: CircularProgressIndicator(),
                    );

                  default:
                    if (snapshot.hasError) {
                      return Center(child: Text('Erro ao carregar lista'));
                      //
                    } else {
                      // !

                      var lista = snapshot.data ?? [];

                      return ListView.builder(
                        itemCount: lista.length,
                        itemBuilder: (context, index) {
                          return Center(
                            child: Container(
                              padding: EdgeInsets.all(10),
                              margin: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                border: Border.all(),
                              ),
                              child: Text(index.toString()),
                            ),
                          );
                        },
                      );
                    }
                }
              },
            ),
          ),

          //
          ElevatedButton(
            child: Text('Carregar lista'),
            onPressed: () {
              controller.carregarLista();
              print('aqui');
            },
          )
        ],
      ),
    );
  }
}
