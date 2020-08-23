import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:currency_converter/bloc/currency_base/currency_base_bloc.dart';
import 'package:currency_converter/bloc/currency_base/currency_base_bloc.dart';
import 'package:currency_converter/bloc/currency_converter/currency_converter_bloc.dart';
import 'package:currency_converter/bloc/currency_rate/bloc.dart';
import 'package:currency_converter/bloc/delegate.dart';
import 'package:currency_converter/repository/repository.dart';
import 'package:currency_converter/screen/home_screen.dart';
import 'package:currency_converter/screen/splash_screen/splash_screen.dart';

void main() {
  BlocSupervisor.delegate=SimpleDelegate();
  runApp(myApp());
}


class myApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>myAppState();
}

class myAppState extends State<myApp>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MultiBlocProvider(
      providers: [
        BlocProvider<CurrencyRateBloc>(
          create: (_) => CurrencyRateBloc(Repository()),
        ),
        BlocProvider<CurrencyConverterBloc>(
          create: (_) => CurrencyConverterBloc(Repository()),
        ),
        BlocProvider<CurrencyBaseBloc>(
          create: (_) => CurrencyBaseBloc(Repository()),
        ),
      ],
      child: MaterialApp(
        title: "Currency Converter",
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.purple),
        home: Scaffold(
          body: SplashScreen(
            splashAnimationDuration: 3,
            navigateAfterSeconds: HomeScreen(),
          ),
        ),
      ),
    );
  }
}