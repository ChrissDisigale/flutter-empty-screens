import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const NoBalancePage(),
    );
  }
}

class NoBalancePage extends StatefulWidget {
  const NoBalancePage({super.key});

  @override
  State<NoBalancePage> createState() => _NoBalancePageState();
}

class _NoBalancePageState extends State<NoBalancePage> {
  @override
  void initState() {
    setStatusBarColor(lightGray);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 230,
                child: Image.asset('images/emptyScreen1/noBalance3.png'),
                decoration: BoxDecoration(color: grey.withOpacity(0.2), shape: BoxShape.circle),
              ),
              70.height,
              Text('No Balance!', style: boldTextStyle(size: 20)),
              16.height,
              Text(
                "cDisigale",
                style: secondaryTextStyle(size: 15),
                textAlign: TextAlign.center,
              ).paddingSymmetric(vertical: 8, horizontal: 60),
            ],
          ),
        ),
      ),
    );
  }
}

