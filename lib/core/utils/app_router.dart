import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:selaty/Feature/presentation/Login/change_password_view.dart';
import 'package:selaty/Feature/presentation/Login/done_change_view.dart';
import 'package:selaty/Feature/presentation/Login/login_and_register_view.dart';
import 'package:selaty/Feature/presentation/Login/login_view.dart';
import 'package:selaty/Feature/presentation/Login/otp_view.dart';
import 'package:selaty/Feature/presentation/Login/register_phone.dart';
import 'package:selaty/Feature/presentation/Login/sign_up_view.dart';
import 'package:selaty/Feature/presentation/Splash/splash_view.dart';
import 'package:selaty/Feature/presentation/Splash/widget/splash_contian.dart';
import 'package:selaty/Feature/presentation/category/category_view.dart';
import 'package:selaty/Feature/presentation/category/delivery%20_address_view.dart';
import 'package:selaty/Feature/presentation/category/impty_cart_view.dart';
import 'package:selaty/Feature/presentation/category/product_category_view.dart';
import 'package:selaty/Feature/presentation/category/shopping_cart_view.dart';
import 'package:selaty/Feature/presentation/home/home_view.dart';
import 'package:selaty/Feature/presentation/profile/cart_about_main.dart';
import 'package:selaty/Feature/presentation/profile/widget/cart_about_main_grid_view.dart';
import 'package:selaty/Feature/presentation/profile/order_success.dart';
import 'package:selaty/Feature/presentation/profile/profile_view.dart';
import 'package:selaty/Feature/presentation/profile/track_order_view.dart';

abstract class AppRouter {
  static const kHomeView = '/HomeView';
  static const kSecendSplash = '/SecendSplash';
  // static const kSearchView = '/kSearchView';
  static const kThirdSplash = '/ThirdSplash';
  static const kFourthSplash = '/FourthSplash';
  static const kLoginAndRegisterView = '/LoginAndRegisterView';
  static const kSignUpView = '/SignUpView';
  static const kRegisterPhone = '/RegisterPhone';
  static const kOtpView = '/OtpView';
  static const kLoginView = '/LoginView';
  static const kChangePasswordView = '/ChangePasswordView';
  static const kDoneChangeView = '/DoneChangeView';
  static const kCategoryView = '/CategoryView';
  static const kProductCategoryView = '/ProductCategoryView';
  static const kShoppingCartView = '/ShoppingCartView';
  static const kImptyCartView = '/ImptyCartView';
  static const kDeliveryAddressView = '/DeliveryAddressView';
  static const kProfileView = '/ProfileView';
  static const kOrderSuccess = '/OrderSuccess';
  static const kTrackOrderView = '/TrackOrderView';
  static const kSplashContian = '/SplashContian';
  static const kCartAboutMain = '/CartAboutMain';
  static final GoRouter router = GoRouter(routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const SplashView();
      },
    ),
    // GoRoute(
    //   path: '/SecendSplash',
    //   builder: (BuildContext context, GoRouterState state) {
    //     return const SecendSplash();
    //   },
    // ),
    // GoRoute(
    //   path: '/ThirdSplash',
    //   builder: (BuildContext context, GoRouterState state) {

    //     return const ThirdSplash(controller: control,);
    //   },
    // ),
    // GoRoute(
    //   path: '/FourthSplash',
    //   builder: (BuildContext context, GoRouterState state) {
    //     return const FourthSplash();
    //   },
    // ),
    GoRoute(
      path: '/LoginAndRegisterView',
      builder: (BuildContext context, GoRouterState state) {
        return const LoginAndRegisterView();
      },
    ),
    GoRoute(
      path: '/SignUpView',
      builder: (BuildContext context, GoRouterState state) {
        return const SignUpView();
      },
    ),
    GoRoute(
      path: '/RegisterPhone',
      builder: (BuildContext context, GoRouterState state) {
        return const RegisterPhone();
      },
    ),
    GoRoute(
      path: '/OtpView',
      builder: (BuildContext context, GoRouterState state) {
        return const OtpView();
      },
    ),
    GoRoute(
      path: '/HomeView',
      builder: (BuildContext context, GoRouterState state) {
        return const HomeView();
      },
    ),
    GoRoute(
      path: '/LoginView',
      builder: (BuildContext context, GoRouterState state) {
        return const LoginView();
      },
    ),
    GoRoute(
      path: '/ChangePasswordView',
      builder: (BuildContext context, GoRouterState state) {
        return const ChangePasswordView();
      },
    ),
    GoRoute(
      path: '/DoneChangeView',
      builder: (BuildContext context, GoRouterState state) {
        return const DoneChangeView();
      },
    ),
    GoRoute(
      path: '/CategoryView',
      builder: (BuildContext context, GoRouterState state) {
        return const CategoryView();
      },
    ),
    GoRoute(
      path: '/ProductCategoryView',
      builder: (BuildContext context, GoRouterState state) {
        return const ProductCategoryView();
      },
    ),
    GoRoute(
      path: '/ShoppingCartView',
      builder: (BuildContext context, GoRouterState state) {
        return const ShoppingCartView();
      },
    ),
    GoRoute(
      path: '/ImptyCartView',
      builder: (BuildContext context, GoRouterState state) {
        return const ImptyCartView();
      },
    ),
    GoRoute(
      path: '/DeliveryAddressView',
      builder: (BuildContext context, GoRouterState state) {
        return const DeliveryAddressView();
      },
    ),
    GoRoute(
      path: '/ProfileView',
      builder: (BuildContext context, GoRouterState state) {
        return const ProfileView();
      },
    ),
    GoRoute(
      path: '/OrderSuccess',
      builder: (BuildContext context, GoRouterState state) {
        return const OrderSuccess();
      },
    ),
    GoRoute(
      path: '/TrackOrderView',
      builder: (BuildContext context, GoRouterState state) {
        return const TrackOrderView();
      },
    ),
    GoRoute(
      path: '/SplashContian',
      builder: (BuildContext context, GoRouterState state) {
        final PageController controller =
            PageController(); // Create a new PageController
        return SplashContian(controller: controller);
      },
    ),
    GoRoute(
      path: '/CartAboutMain',
      builder: (BuildContext context, GoRouterState state) {
        // Create a new PageController
        return const CartAboutMain();
      },
    ),

    // GoRoute(
    //   path: kHomeView,
    //   builder: (BuildContext context, GoRouterState state) {
    //     return const HomeView();
    //   },
    // ),
    // GoRoute(
    //   path: kSearchView,
    //   builder: (BuildContext context, GoRouterState state) {
    //     return const SearchView();
    //   },
    // ),
  ]);
}
