import 'package:appli/services/counter_services.dart';
import 'package:appli/view/counterView.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import '../view/homeView.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: CounterClass,initial: true),
    MaterialRoute(page: HomeView),

  ],
  dependencies: [
    Singleton(classType: NavigationService),
    LazySingleton(classType: CounterServices),
  ]
)
class App {}
