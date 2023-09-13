

import 'package:bub/event_pages/create_event_page.dart';
import 'package:bub/event_pages/event_chat_page.dart';
import 'package:bub/landing_page/about_association_page.dart';
import 'package:bub/landing_page/landing_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class Routes {

  static const String landingPage = "/";

  static const String evenChatPage = "/eventChat";



  static const String createEventPage = "/createEvent";



  static GoRouter buildRouter() {
    return GoRouter(
      initialLocation: landingPage,
      routes: _buildRoutes(),
    );
  }

  static List<RouteBase> _buildRoutes() {
    return [

      GoRoute(
        name: 'landing_page',
        path: landingPage,
        builder: (BuildContext context, GoRouterState state) {
          // Return the widget for the landing page
          return const LandingPage();
        },
      ),

      ///Event Chat Page
      GoRoute(
        name: 'eventChatPage',
        path: evenChatPage,
        builder: (BuildContext context, GoRouterState state) {
          return const EventChatPage();
        },
      ),


      ///Event create Page
      GoRoute(
        name: 'createEventPage',
        path: createEventPage,
        builder: (BuildContext context, GoRouterState state) {
          return const CreateEventPage();
        },
      ),


    ];
  }
}