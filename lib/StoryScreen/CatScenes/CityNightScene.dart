import 'package:flutter/material.dart';
import 'package:arma_tu_cuento/Components/MainBackground.dart';
//import 'package:arma_tu_cuento/Components/ContainerImage.dart';
import 'package:arma_tu_cuento/MenuScreen/Components/TopButtons.dart';
import 'package:arma_tu_cuento/StoryScreen/Components/BottomButtons.dart';
import 'package:arma_tu_cuento/Components/ContainerImage.dart';
import 'package:arma_tu_cuento/StoryScreen/CatScenes/ForestNightScene.dart';
import 'package:arma_tu_cuento/StoryScreen/Components/DraggableImage.dart';
import 'package:arma_tu_cuento/ConstantsImages/ConstantsImages.dart';
import 'package:get/get.dart';

class CityNightScene extends StatefulWidget {
  CityNightScene({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _CityNightSceneState createState() => _CityNightSceneState();
}

class _CityNightSceneState extends State<CityNightScene> {
  bool accepted = false;

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
                imagePath: 'assets/Scenes/night.png',
              ),
              MainBackground(
                widthScreen: widthScreen,
                heightScreen: heightScreen,
                imagePath: 'assets/Scenes/city.png',
              ),
              TopButtons(),
              Positioned(
                left: 30,
                bottom: 5,
                child: accepted
                    ? Container()
                    : DraggableImage(
                        width: 120,
                        height: 120,
                        imagePath: 'assets/Characters/felix_run1.png',
                      ),
              ),
              Positioned(
                right: 10,
                bottom: 5,
                child: DragTarget(
                  builder: (context, List<String> data, rj) {
                    return ContainerImage(
                      width: 120,
                      height: 200,
                      imagePath: ConstantsImages.gif_red_circle,
                    );
                  },
                  onAccept: (data) {
                    if (data == 'assets/Characters/felix_run1.png') {
                      setState(() {
                        Get.to(ForestNightScene());
                        accepted = true;
                      });
                    }
                  },
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: ContainerImage(
                    width: 110,
                    height: 140,
                    imagePath: ConstantsImages.img_sonder),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
