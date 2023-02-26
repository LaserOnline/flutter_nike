import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Style/Style.dart';
import '../../Controller/ProductController.dart';
import '../Image_Cecommend_Product/Image_Recommend_Product.dart';

class Recommend_Product extends StatelessWidget {
  final productcontroller = Get.put(ProductController());
  var Styles = new Style();
  @override
  Widget build(BuildContext context) =>
      GetX<ProductController>(builder: (controller) {
        return Container(
          width: MediaQuery.of(context).size.width,
          height: 300,
          child: GridView.builder(
            scrollDirection: Axis.horizontal,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              mainAxisExtent: 250,
              mainAxisSpacing: 12.0,
              crossAxisSpacing: 12.0,
            ),
            itemCount: controller.prodcuts.length,
            itemBuilder: ((context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      16.0,
                    ),
                    color: Color.fromARGB(255, 10, 10, 10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ImageRecommendProduct(),
                      Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                color: Colors.white,
                                width: 234,
                                child: AutoSizeText(
                                  "${controller.prodcuts[index].price}",
                                  style: TextStyle(
                                    fontSize: Styles.Product_Text_Title,
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    fontFamily: 'SPHERE-FEZ',
                                  ),
                                  maxLines: Styles.Product_MAXLINE_Title,
                                  minFontSize: Styles.Product_Text_Title,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Container(
                                width: 234,
                                child: AutoSizeText(
                                  "${controller.prodcuts[index].detail}",
                                  style: TextStyle(
                                    fontSize: Styles.Product_Text_Details,
                                    color: Color.fromARGB(255, 252, 251, 251),
                                    fontFamily: 'SPHERE-FEZ',
                                  ),
                                  maxLines: Styles.Product_MAXLINE_Details,
                                  minFontSize: Styles.Product_Text_Details,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            }),
          ),
        );
      });
}
