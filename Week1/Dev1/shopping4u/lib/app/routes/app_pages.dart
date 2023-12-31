import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shopping4u/app/modules/home/bindings/home_binding.dart';
import 'package:shopping4u/app/modules/home/views/home_view.dart';
import 'package:shopping4u/app/modules/see_more_detail_view.dart';

import '../modules/details/binding/detail_binding.dart';
import '../modules/details/views/detail_view.dart';

part 'app_routes.dart';

abstract class AppPages {
  const AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL,
      page: () => const DetailView(),
      binding: DetailBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_SeeMore,
      page: () => const SeeMoreDetailView(),
      binding: DetailBinding(),
    )
  ];
}
