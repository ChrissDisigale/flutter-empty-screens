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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                60.width,
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Inbox', style: boldTextStyle(size: 20), textAlign: TextAlign.start),
                    Text('You have no mail', style: primaryTextStyle(size: 15), textAlign: TextAlign.start),
                  ],
                ).expand(),
                IconButton(onPressed: () {}, icon: Icon(Icons.add)),
              ],
            ).paddingOnly(left: 8, right: 8, top: 16),
            SizedBox(height: context.height() * 0.2),
            Container(
              height: 350,
              padding: EdgeInsets.all(32),
              child: Image.asset('images/emptyScreen1/inbox.png'),
              decoration: BoxDecoration(color: lightGray.withOpacity(0.5), shape: BoxShape.circle),
            ),
          ],
        ),
      ),
    );
  }
}

