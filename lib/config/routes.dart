/*
 * fluro
 * Created by Yakka
 * https://theyakka.com
 * 
 * Copyright (c) 2018 Yakka, LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */
import 'package:fluro/fluro.dart' as fluro;
import 'package:flutter/material.dart';
import 'package:paymentez_mobile/config/route_handlers.dart';


class Routes {
  static final String root = "/";
  static final String addCard = "/add_card";

  static void configureRoutes(fluro.Router router) {
    router.notFoundHandler = fluro.Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      debugPrint("ROUTE WAS NOT FOUND !!!");
      return Container();
    });
//    Route
    router.define(root, handler: rootHandler);
//    AddCard
    router.define(addCard,
        handler: addCardHandler, transitionType: fluro.TransitionType.fadeIn);
  }
}
