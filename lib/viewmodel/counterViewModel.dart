import 'package:appli/app/app.router.dart';
import 'package:appli/services/counter_services.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked_services/stacked_services.dart';

import '../app/app.locator.dart';

class CounterViewModel extends BaseViewModel {
  final navigationService = locator<NavigationService>();
  final counterServices = locator<CounterServices>();

  addValue() {
    counterServices.addCounterValue();
    rebuildUi();
  }

  navigateTo() {
    navigationService.navigateToHomeView();
  }
}
