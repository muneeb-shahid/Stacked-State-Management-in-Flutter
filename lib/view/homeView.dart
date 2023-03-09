import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../viewmodel/counterViewModel.dart';
import '../viewmodel/homeViewModel.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => HomeViewModel(),
      builder: (context, viewModel, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Home Page"),
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
              // ElevatedButton(
              //     onPressed: () {}, child: Text("Add Counter Value")),
              // SizedBox(
              //   height: 30,
              // ),
              // ElevatedButton(
              //     onPressed: () {}, child: Text("Navuigate to Home")),
            ],
          ),
        );
      },
    );
  }
}
