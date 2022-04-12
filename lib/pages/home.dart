import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pluto_grid/pluto_grid.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final GlobalKey<ScaffoldState> homeScaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: homeScaffoldKey,
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 60,
        flexibleSpace: Container(
          color: Colors.blueGrey.shade300,
          child: SizedBox(
            height: 100,
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: [
                Stack(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 60,
                          width: 250,
                          color: Colors.lightBlueAccent.shade400,
                          padding: const EdgeInsets.only(top: 18, bottom: 8),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Container(
                                    color: Colors.amber.shade100,
                                    height: 6,
                                    width: 20,
                                  ),
                                  Container(
                                    color: Colors.amber.shade200,
                                    height: 6,
                                    width: 20,
                                  ),
                                  Container(
                                    color: Colors.amber.shade300,
                                    height: 6,
                                    width: 20,
                                  ),
                                  Container(
                                    color: Colors.amber.shade400,
                                    height: 6,
                                    width: 20,
                                  ),
                                  Container(
                                    color: Colors.amber.shade500,
                                    height: 6,
                                    width: 20,
                                  ),
                                ],
                              ),
                              const SizedBox(width: 16),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      drawerScrimColor: Colors.transparent,
      body: Row(
        children: [
          Container(
            width: 250,
            color: Colors.lightBlueAccent.shade400,
            child: Column(
              children: const [Text('Here is the sidebar Menu')],
            ),
          ),
          Expanded(
              child: Stack(
            children: const [RouterOutlet()],
          ))
        ],
      ),
    );
  }
}
