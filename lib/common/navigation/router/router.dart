import 'package:amplify_trips_planner/common/navigation/router/routes.dart';
import 'package:amplify_trips_planner/features/trip/ui/trips_list/trips_list.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: "/",
      name: AppRoute.home.name,
      builder: (context, state) => const TripsListPage(),
    )
  ],
  errorBuilder: (context, state) => Scaffold(
    body: Center(
      child: Text(
        state.error.toString(),
      ),
    ),
  ),
);
