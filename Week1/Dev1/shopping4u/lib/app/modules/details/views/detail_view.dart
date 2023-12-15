import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping4u/app/common/values/constants.dart';
import 'package:shopping4u/app/models/product.dart';
import 'package:shopping4u/app/modules/details/controllers/detail_controller.dart';

import '../components/detail_body.dart';

class DetailView extends GetView<DetailController> {
  const DetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var product = Get.arguments as Product;
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(),
      body: DetailBody(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios_new_outlined),
        color: Colors.black45,
        onPressed: () {
          Get.back();
        },
      ),
    );
  }
}
