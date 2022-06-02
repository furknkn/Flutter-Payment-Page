import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ruutcase/payment/viewmodel/payment_viewmodel.dart';

import 'core/utility/screen-size.dart';
import 'payment/view/pages/payment_view.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => PaymentViewModel(),
        ),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) {
        ScreenSize().screenSize = MediaQuery.of(context).size;
        return MediaQuery(
          child: child!,
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
        );
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PaymentView(),
    );
  }
}
