import 'package:mobicom/presentation/home_page/home_page.dart';
import 'package:mobicom/presentation/top_playlists_page/top_playlists_page.dart';
import 'package:mobicom/presentation/favorites_page/favorites_page.dart';
import 'package:mobicom/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:mobicom/core/app_export.dart';
import 'controller/home_page_container_controller.dart';

class HomePageContainerScreen extends GetWidget<HomePageContainerController> {
  const HomePageContainerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: Get.nestedKey(1),
                initialRoute: AppRoutes.homePage,
                onGenerateRoute: (routeSetting) => GetPageRoute(
                    page: () => getCurrentPage(routeSetting.name!),
                    transition: Transition.noTransition)),
            bottomNavigationBar: _buildBottomBar()));
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Get.toNamed(getCurrentRoute(type), id: 1);
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.chapterScreen;
      case BottomBarEnum.Top:
        return AppRoutes.homePage;
      
      case BottomBarEnum.Favorites:
        return AppRoutes.favoritesPage;
      case BottomBarEnum.Search:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage();
      case AppRoutes.chapterScreen:
        return TopPlaylistsPage();
      case AppRoutes.favoritesPage:
        return FavoritesPage();
      default:
        return DefaultWidget();
    }
  }
}
