import 'package:counter_application/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:counter_application/home_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:counter_application/dec_page.dart';
import 'package:counter_application/inc_page.dart';

import 'package:go_router/go_router.dart';

final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const MyHomePage(title: 'Overkill Counter App');
      },
    ),
    GoRoute(
      path: '/increment',
      builder: (BuildContext context, GoRouterState state) {
        return const IncPage();
      },
    ),
    GoRoute(
      path: '/decrement',
      builder: (BuildContext context, GoRouterState state) {
        return const DecPage();
      },
    ),
  ],
);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      // BlockProvider allows the same instance of cubit to be shared
      create: (_) =>
          CounterCubit(), // _ is not used in this case. Can be used for initializing Cubits
      child: MaterialApp.router(
        routerConfig: _router,
      ),
    );
  }
}
