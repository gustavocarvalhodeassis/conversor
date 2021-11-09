import 'package:conversor/constants.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_tab_bar/indicator/linear_indicator.dart';

import 'Unidades/medicao.dart';
import 'Unidades/peso.dart';
import 'Unidades/temperatura.dart';
import 'Unidades/tempo.dart';
import 'Unidades/velocidade.dart';

class BuildPage extends StatefulWidget {
  const BuildPage({Key? key}) : super(key: key);

  @override
  _BuildPageState createState() => _BuildPageState();
}

class _BuildPageState extends State<BuildPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: LayoutBuilder(
      builder: (context, contrains) {
        if (contrains.maxWidth > 800) {
          return DefaultTabController(
            length: 5,
            child: Scaffold(
              backgroundColor: Colors.black,
              appBar: AppBar(
                centerTitle: true,
                backgroundColor: Colors.black,
                elevation: 0,
                bottom: const TabBar(
                  unselectedLabelStyle: kTabTextStyle,
                  labelStyle: kTabTextStyle,
                  isScrollable: true,
                  indicatorWeight: 3,
                  labelColor: Colors.white,
                  indicatorColor: Colors.white,
                  dragStartBehavior: DragStartBehavior.start,
                  tabs: [
                    Tab(
                      text: 'Temperatura',
                    ),
                    Tab(
                      text: 'Velocidade',
                    ),
                    Tab(
                      text: 'Peso',
                    ),
                    Tab(
                      text: 'Medição',
                    ),
                    Tab(
                      text: 'Tempo',
                    ),
                  ],
                ),
                title: const Text(
                  'Conversor',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.w200),
                ),
              ),
              body: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TabBarView(
                  children: [
                    Temperatura(),
                    Velocidade(),
                    Peso(),
                    Medicao(),
                    Tempo(),
                  ],
                ),
              ),
              floatingActionButton: FloatingActionButton(
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.refresh,
                  color: Colors.black,
                ),
                onPressed: () {
                  setState(() {
                    kelvinController.clear();
                    fahrenheitController.clear();
                    celciusController.clear();
                  });
                },
              ),
            ),
          );
        } else {
          return DefaultTabController(
            length: 5,
            child: Scaffold(
              backgroundColor: Colors.black,
              appBar: AppBar(
                centerTitle: false,
                backgroundColor: Colors.black,
                elevation: 0,
                bottom: const TabBar(
                  unselectedLabelStyle: kTabTextStyle,
                  labelStyle: kTabTextStyle,
                  isScrollable: true,
                  indicatorWeight: 3,
                  labelColor: Colors.white,
                  indicatorColor: Colors.white,
                  dragStartBehavior: DragStartBehavior.start,
                  tabs: [
                    Tab(
                      text: 'Temperatura',
                    ),
                    Tab(
                      text: 'Velocidade',
                    ),
                    Tab(
                      text: 'Peso',
                    ),
                    Tab(
                      text: 'Medição',
                    ),
                    Tab(
                      text: 'Tempo',
                    ),
                  ],
                ),
                title: const Text(
                  'Conversor',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.w200),
                ),
              ),
              body: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TabBarView(
                  children: [
                    Temperatura(),
                    Velocidade(),
                    Peso(),
                    Medicao(),
                    Tempo(),
                  ],
                ),
              ),
              floatingActionButton: FloatingActionButton(
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.refresh,
                  color: Colors.black,
                ),
                onPressed: () {
                  setState(() {
                    kelvinController.clear();
                    fahrenheitController.clear();
                    celciusController.clear();
                  });
                },
              ),
            ),
          );
        }
      },
    ));
  }
}
