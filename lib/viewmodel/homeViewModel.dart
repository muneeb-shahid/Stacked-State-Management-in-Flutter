import 'package:stacked/stacked.dart';

import '../app/app.locator.dart';
import '../services/counter_services.dart';

class HomeViewModel extends BaseViewModel{
  final counterServices = locator<CounterServices>();

  addValue() {
    counterServices.addCounterValue();
    rebuildUi();
  }
}