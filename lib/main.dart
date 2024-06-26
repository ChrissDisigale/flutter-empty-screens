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
      home: const AllTaskDonePage(),
    );
  }
}

class AllTaskDonePage extends StatefulWidget {
  const AllTaskDonePage({super.key});

  @override
  State<AllTaskDonePage> createState() => _AllTaskDonePageState();
}

class _AllTaskDonePageState extends State<AllTaskDonePage> {
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
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                ClipPath(
                  clipper: WaveClipper(),
                  child: Container(
                    height: context.height() * 0.65,
                    decoration: const BoxDecoration(color: lightGray),
                  ),
                ),
                Column(
                  children: [
                    120.height,
                    Image.asset('images/emptyScreen1/allTaskDone.png', height: 240),
                  ],
                ),
              ],
            ),
            Text('All Task Done!', style: boldTextStyle(size: 20)),
            16.height,
            Text(
              "cDisigale",
              style: primaryTextStyle(size: 15),
              textAlign: TextAlign.center,
            ).paddingSymmetric(vertical: 8, horizontal: 60),
            50.height,
            AppButton(
              shapeBorder: RoundedRectangleBorder(borderRadius: radius(30)),
              color: Color(0xFF2D3E5E),
              elevation: 10,
              onTap: () {
                toast('Add More');
              },
              child: Text('Add More', style: boldTextStyle(color: white)).paddingSymmetric(horizontal: 32),
            ),
          ],
        ),
      ),
    );
  }
}

class WaveClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    var path = new Path();
    path.lineTo(0, size.height / 3.25); //Current point to bottom left
    var firstControlPoint = new Offset(size.width / 4, size.height / 3);
    var firstEndPoint = new Offset(size.width / 2, size.height / 3 - 60);
    var secondControlPoint = new Offset(size.width - (size.width / 4), size.height / 4 - 65);
    var secondEndPoint = new Offset(size.width, size.height / 3 - 40);

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy, firstEndPoint.dx, firstEndPoint.dy);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy, secondEndPoint.dx, secondEndPoint.dy);

    path.lineTo(size.width, size.height / 2.5); //Current point to top right
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return false;
  }
}
