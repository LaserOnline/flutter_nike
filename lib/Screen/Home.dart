import 'package:custom_refresh_indicator/custom_refresh_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:video_player/video_player.dart';
import 'package:rive/rive.dart';
import '../Utils/Text/Variable.dart';
import '../Widget/View/NewProduct.dart';
import '../Widget/View/Recommend_Product.dart';
import '../Widget/View/AllProduct.dart';
import '../Widget/Bar_Animation/AppTitle.dart';
import '../Widget/Profile/Profile.dart';
import '../Models/Chat.dart';

class Home extends StatelessWidget {
  var text = new Variable_Text();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Color.fromARGB(255, 248, 248, 248),
              centerTitle: true,
              title: Text(
                "${text.Title}",
                style: const TextStyle(
                  fontSize: 25,
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontFamily: 'SPHERE-FEZ',
                ),
              ),
              actions: [
                Profile(),
              ],
              flexibleSpace: FlexibleSpaceBar(
                background: AppTitle(),
              ),
              expandedHeight: 230,
            ),
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "${text.New_Product}",
                      style: const TextStyle(
                        fontSize: 25,
                        color: Color.fromARGB(255, 10, 10, 10),
                        fontFamily: 'SPHERE-FEZ',
                      ),
                    ),
                  ),
                  NewProduct(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "${text.Recommend}",
                      style: const TextStyle(
                        fontSize: 25,
                        color: Color.fromARGB(255, 10, 10, 10),
                        fontFamily: 'SPHERE-FEZ',
                      ),
                    ),
                  ),
                  Recommend_Product(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "${text.Str_Product}",
                      style: const TextStyle(
                        fontSize: 25,
                        color: Color.fromARGB(255, 10, 10, 10),
                        fontFamily: 'SPHERE-FEZ',
                      ),
                    ),
                  ),
                  Product(),
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => ChatPage(),
            ),
          );
        },
        child: const RiveAnimation.asset(
          "assets/Animation/Chat.riv",
          fit: BoxFit.cover,
        ),
        backgroundColor: Color.fromARGB(255, 56, 170, 223),
      ),
      // backgroundColor: Colors.amber[300],
    );
  }
}
