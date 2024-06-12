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
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
        backgroundColor: Color(0xFFB45CFF),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: 230,
              padding: EdgeInsets.all(32),
              child: Image.asset('images/emptyScreen1/allTaskDone2.png'),
              decoration: BoxDecoration(color: Color(0xFFAE56FA), shape: BoxShape.circle),
            ),
            48.height,
            Text('All Task Done!', style: boldTextStyle(size: 20, color: white)),
            16.height,
            Text(
              "cDisigale",
              style: primaryTextStyle(size: 15, color: white),
              textAlign: TextAlign.center,
            ).paddingSymmetric(vertical: 8, horizontal: 60),
            50.height,
            AppButton(
              shapeBorder: RoundedRectangleBorder(borderRadius: radius(30)),
              elevation: 10,
              onTap: () {
                toast('Review');
              },
              child: Text(
                'Review',
                style: boldTextStyle(
                  color: Color(0xFFB45CFF),
                ),
              ).paddingSymmetric(horizontal: 32),
            ),
            100.height,
          ],
        ),
      ),
    );
  }
}