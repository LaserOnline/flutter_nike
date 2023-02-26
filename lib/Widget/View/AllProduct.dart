import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:get/get.dart';
import '../../Style/Style.dart';
import '../../Controller/ProductController.dart';
import '../Image_All_Product/Image_All_Product.dart';

class Product extends StatelessWidget {
  var Styles = new Style();
  final productController = Get.put(ProductController());
  @override
  Widget build(BuildContext context) => GetX<ProductController>(
        builder: (controller) {
          return GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: 250,
              mainAxisSpacing: 12.0,
              crossAxisSpacing: 12.0,
            ),
            itemCount: controller.prodcuts.length,
            itemBuilder: ((context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      16.0,
                    ),
                    color: Color.fromARGB(255, 10, 10, 10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ImageAllProduct(),
                      Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                color: Colors.white,
                                width: Styles.Product_Text_ALL_Width,
                                child: AutoSizeText(
                                  "Price ${controller.prodcuts[index].price}",
                                  style: TextStyle(
                                    fontSize: Styles.Product_Text_Title,
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    fontFamily: 'SPHERE-FEZ',
                                  ),
                                  maxLines: Styles.Product_ALL_MAXLINE_Details,
                                  minFontSize: 10,
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
                                width: Styles.Product_Text_ALL_Width,
                                child: AutoSizeText(
                                  "${controller.prodcuts[index].detail}",
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Color.fromARGB(255, 252, 251, 251),
                                    fontFamily: 'SPHERE-FEZ',
                                  ),
                                  maxLines: Styles.Product_ALL_MAXLINE_Details,
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
          );
        },
      );
}
