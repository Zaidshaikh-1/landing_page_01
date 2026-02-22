import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
    );
  }

  AppBar appBar() {
    return AppBar(
      title: Text(
        'Breakfast',
        style: TextStyle(
        color: Colors.black,
        fontSize: 18,
        fontWeight: FontWeight.bold,
        ),
      ),
    backgroundColor: Colors.white,
    centerTitle: true,
    leading: GestureDetector(
    onTap: (){

    },
      child: Container(
        margin: EdgeInsets.all(10),
        alignment: Alignment.center,
        width: 40,
        child: SvgPicture.asset(
          'assets/icons/Arrow - Left 2.svg',
          height: 25,
          width: 25,
        ),
          decoration: BoxDecoration(
          color: Color(0xff),
          borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
        actions: [
          GestureDetector(
            onTap: () {

            },
            child: Container(
              margin: EdgeInsets.all(10),
              alignment: Alignment.center,
              width: 40,
              child: SvgPicture.asset(
              'assets/icons/dots.svg',
              height: 7,
              width: 7,
              ),
              decoration: BoxDecoration(
                color: Color(0xff),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
        ],
    );
  }
}
