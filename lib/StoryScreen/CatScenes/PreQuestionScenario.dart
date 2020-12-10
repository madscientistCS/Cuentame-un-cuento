import 'package:flutter/material.dart';
import 'package:arma_tu_cuento/Components/MainBackground.dart';
//import 'package:arma_tu_cuento/Components/ContainerImage.dart';
import 'package:arma_tu_cuento/MenuScreen/Components/TopButtons.dart';
import 'package:arma_tu_cuento/StoryScreen/Components/BottomButtons.dart';
import 'package:arma_tu_cuento/Components/ContainerImage.dart';
import 'package:arma_tu_cuento/StoryScreen/CatScenes/ForestDayScene.dart';
import 'package:get/get.dart';

class PreQuestionScenario extends StatefulWidget {
  PreQuestionScenario({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _PreQuestionScenarioState createState() => _PreQuestionScenarioState();
}

class _PreQuestionScenarioState extends State<PreQuestionScenario> {
  @override
  Widget build(BuildContext context) {
    double widthScreen;
    double heightScreen;
    widthScreen = MediaQuery.of(context).size.width;
    heightScreen = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
          child: Center(
              child: Stack(
        children: <Widget>[
          MainBackground(
            widthScreen: widthScreen,
            heightScreen: heightScreen,
            imagePath: 'assets/init/background.png',
          ),
          TopButtons(),
          /*Center(
            child: ContainerImage(
              width: 400,
              height: 150,
              imagePath: 'assets/init/finhistoria.png',
            ),
          ),*/
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  height: 200,
                  width: 200,
                  child: ConstrainedBox(
                      constraints: BoxConstraints.expand(),
                      child: FlatButton(
                          onPressed: () {
                            Get.to(ForestDayScene());
                          },
                          padding: EdgeInsets.all(0.0),
                          child:
                              Image.asset('assets/init/gatopregunta.png'))))),
          Align(
              alignment: AlignmentDirectional(0.0, -0.5),
              child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.lightBlue,
                      width: 4.0,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(8.0)
                        //width: 10.0, //         <--- border radius here
                        ),
                  ),
                  height: 60,
                  width: 230,
                  child: RaisedButton.icon(
                    textColor: Colors.black,
                    color: Colors.white,
                    onPressed: () {
                      // Respond to button press
                    },
                    icon: Icon(Icons.add, size: 0),
                    label: Text("ES HORA DE UN PEQUEÑO \nCUESTIONARIO"),
                  ))),
/*
          Align(
              alignment: AlignmentDirectional(0.0, -0.5),
              child: Container(
                  height: 80,
                  width: 230,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.lightBlue,
                      width: 4.0,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(8.0)
                        //width: 10.0, //         <--- border radius here
                        ),
                  ),
                  child: Center(
                    child: TextField(
                      // use the text align property
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        labelText: 'ES HORA DE UN PEQUEÑO \NCUESTIONARIO',
                      ),
                    ),
                  ))),
*/
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  height: 200,
                  width: 200,
                  child: ConstrainedBox(
                      constraints: BoxConstraints.expand(),
                      child: FlatButton(
                          onPressed: () {
                            /*Get.to(ForestDayScene());*/
                          },
                          padding: EdgeInsets.all(0.0),
                          child:
                              Image.asset('assets/init/gatopregunta.png'))))),

          BottomButtons(), // el botton sig esta comentado porque debe ser dimamico
          Positioned(
            right: 250,
            child: IconButton(
              // el boton debe dar a la siguiente pantalla
              icon: Icon(Icons.navigate_next),
              color: Colors.blue,
              iconSize: 80,
              onPressed: () {},
            ),
          ),
        ],
      ))),
    );
  }
}