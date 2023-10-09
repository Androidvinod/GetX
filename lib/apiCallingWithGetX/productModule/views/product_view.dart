import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/apiCallingWithGetX/commonModule/app_colors.dart';
import 'package:get_x/apiCallingWithGetX/commonModule/app_strings.dart';
import 'package:get_x/apiCallingWithGetX/productModule/controllers/product_controller.dart';
import 'package:get_x/pages/details_page.dart';

class ProductView extends StatelessWidget {
  final ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppString.productList),
      ),
      body: Obx(() {
        if (productController.isLoading.value) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return ListView.builder(
            itemCount: productController.productList.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.to(() => DetailsPage(
                              image: productController.productList[index].url, heroTag: 'productImage_$index'),
                          );
                        },
                        child: Container(
                          height: 100,
                          width: 150,
                          margin: const EdgeInsets.fromLTRB(16, 8, 8, 8),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Hero(
                              tag: 'productImage_$index',
                              child: FadeInImage(
                                image: NetworkImage(productController.productList[index].url),
                                placeholder: const AssetImage('assets/placeholder.png'),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            productController.productList[index].id.toString(),
                            style: const TextStyle(
                                fontSize: 18, color: AppColor.grey),
                          ),
                          Text(
                            productController.productList[index].title,
                            style: const TextStyle(
                                fontSize: 14, color: AppColor.grey),
                          ),
                          Text(
                            productController.productList[index].thumbnailUrl,
                            style: const TextStyle(
                                fontSize: 14, color: AppColor.grey),
                          )
                        ],
                      ))
                    ],
                  ),
                  Container(
                    color: AppColor.grey200,
                    height: 2,
                  )
                ],
              );
            },
          );
        }
      }),
    );
  }
}
