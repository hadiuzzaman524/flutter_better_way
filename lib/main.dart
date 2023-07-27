import 'package:better_way/injector/injector.dart';
import 'package:better_way/widget/my_app.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

/// Third Example

@lazySingleton
class Mobile {
  final SimCard1 simCard1;

  Mobile(this.simCard1);

  void incomingCall() {
    simCard1.incomingCall();
  }
}

@lazySingleton
class SimCard1 {
  void incomingCall() {
    print("It's ringing! please pick the call");
  }
}

void main() async {
  await configureDependencies();
  final nokia = injector<Mobile>();
  nokia.incomingCall();
  runApp(const MyApp());
}

/// First Example
/*
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

class Mobile {
  void incomingCall() {
    print("It's ringing! please pick the call");
  }
}


void main() {
  getIt.registerSingleton<Mobile>(Mobile());
  final nokia = getIt<Mobile>();
  nokia.incomingCall();

  runApp(const MyApp());
}
 */

/// Second Example
/*
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

class Mobile {
  final SimCard1 simCard1;

  Mobile(this.simCard1);

  void incomingCall() {
    simCard1.incomingCall();
  }
}1

class SimCard1 {
  void incomingCall() {
    print("It's ringing! please pick the call");
  }
}

void main() {
  getIt.registerSingleton<SimCard1>(SimCard1());
  getIt.registerLazySingleton<Mobile>(() => Mobile(getIt<SimCard1>()));

  final nokia = getIt<Mobile>();
  nokia.incomingCall();

  runApp(const MyApp());
}
 */
