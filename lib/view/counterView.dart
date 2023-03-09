import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../viewmodel/counterViewModel.dart';

class CounterClass extends StatelessWidget {
  const CounterClass({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => CounterViewModel(),
      builder: (context, viewModel, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Counter Page"),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 30,
              ),
              Text(
                viewModel.counterServices.counterValue.toString(),
                style: TextStyle(fontSize: 50),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  onPressed: () {
                    viewModel.addValue();
                  },
                  child: Text("Add Counter Value")),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  onPressed: () {
                    viewModel.navigateTo();
                  },
                  child: Text("Navuigate to Home")),
            ],
          ),
        );
      },
    );
  }
}
