import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_statemanagemnet_mvvm_architecture_rest_apis/provider_directory/count_provider.dart';
import 'package:provider_statemanagemnet_mvvm_architecture_rest_apis/screens_directory/count_example.dart';
import 'package:provider_statemanagemnet_mvvm_architecture_rest_apis/statefull_widget_screen.dart';
import 'package:provider_statemanagemnet_mvvm_architecture_rest_apis/stateless_widget_home_screen.dart';
import 'package:provider_statemanagemnet_mvvm_architecture_rest_apis/why_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_)=>CountProvider(),
     child: MaterialApp(
       title: 'Flutter Demo',
       theme: ThemeData(

         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
         useMaterial3: true,
       ),
       home:  CountExample(),
     ),
    );


  }
}