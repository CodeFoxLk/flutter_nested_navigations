import 'package:flutter/material.dart';
import 'package:flutter_nested_navigation/examples/go_router/pages/product_details_page.dart';
import 'package:flutter_nested_navigation/examples/go_router/pages/product_list.dart';
import 'package:go_router/go_router.dart';
import '../pages/login.dart';

class AppRouter {
  late final GoRouter router = GoRouter(
   debugLogDiagnostics: true,
    routes: <GoRoute>[
      GoRoute(
          path: '/',
          builder: (BuildContext context, GoRouterState state) {
            return const GoLoginPage();
          },
          routes: [
            GoRoute(
               name: 'product_list',
                path: 'productlist/:category',
                builder: (BuildContext context, GoRouterState state) {
                  return GoRouteProductListPage(
                    accending: state.queryParams['acd'] == 'true',
                  );
                },
                routes: [
                  GoRoute(
                    name : 'product',
                    path: 'product/:id',
                    builder: (BuildContext context, GoRouterState state) {
                      return GoProductDetailsPage(
                          productId: state.params['id'] ?? 'no Id');
                    },
                  ),
                ]),
          ]),
    ],
    // redirect: (context, state) {
    //   bool isLoggedIn = true;
    //   if(!isLoggedIn){
    //     return '/';
    //   }else{
    //     return '/productlist/mobiles';
    //   }
    // },
  );
}
