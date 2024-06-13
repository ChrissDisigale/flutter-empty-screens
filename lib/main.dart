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
      home: const EmptyCartScreen(),
    );
  }
}

class EmptyCartScreen extends StatefulWidget {
  static var tag = "/empty_cart1";
  const EmptyCartScreen({Key? key}) : super(key: key);

  @override
  _EmptyCartScreenState createState() => _EmptyCartScreenState();
}

class _EmptyCartScreenState extends State<EmptyCartScreen> {
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
                padding: EdgeInsets.all(16),
                child: Image.asset('images/emptyScreen1/emptyCart1.png'),
                decoration: BoxDecoration(color: grey.withOpacity(0.2), shape: BoxShape.circle),
              ),
              70.height,
              Text('Empty Cart', style: boldTextStyle(size: 20)),
              16.height,
              Text(
                "cDisigale",
                style: primaryTextStyle(size: 15, color: Colors.blueGrey),
                textAlign: TextAlign.center,
              ).paddingSymmetric(vertical: 8, horizontal: 60),
              32.height,
              FloatingActionButton(
                backgroundColor: Color(0xFF2D3E5E),
                child: Icon(Icons.shopping_cart, size: 30, color: Colors.white),
                onPressed: () {
                  toast('Add Items');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
