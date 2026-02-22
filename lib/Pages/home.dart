import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _searchBar(),
          SizedBox(height: 40,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                    'Category',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                height: 150,
                color: Colors.blue,
                child: ListView.builder(
                    itemBuilder: (context, index) {
                      return Container();
                    }
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Container _searchBar() {
    return Container(
          margin: EdgeInsets.only(top: 40, left: 20,right: 20),
          decoration: BoxDecoration(
           boxShadow: [
             BoxShadow(
               color: Color(0xff1D1617).withOpacity(0.11),
               blurRadius: 40,
               spreadRadius: 0.0,
             )
           ]
          ),
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              contentPadding: EdgeInsets.all(15),
              hintText: 'Search Avocado Toast',
              hintStyle: TextStyle(
                color: Colors.grey[400],
                fontSize: 14
              ),
              prefixIcon: Padding(
                  padding: const EdgeInsets.all(12),
                  child: SvgPicture.asset('assets/icons/Search.svg'),
              ),
              suffixIcon: Container(
                width: 100,
                child: IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      VerticalDivider(
                        color: Colors.black,
                        indent: 10,
                        endIndent: 10,
                        thickness: 0.4,
                      ),
                      Padding(
                          padding: const EdgeInsets.all(12),
                          child: SvgPicture.asset('assets/icons/Filter.svg'),
                      ),
                    ],
                  ),
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none,
              )
            ),
          ),
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
        child: IconButton(
            onPressed: () {},
            icon: Icon(Icons.chevron_left)
        ),
        // child: SvgPicture.asset(
        //   'assets/icons/Arrow - Left 2.svg',
        //   height: 25,
        //   width: 25,
        // ),
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
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.more_horiz)
              ),
              // child: SvgPicture.asset(
              // 'assets/icons/dots.svg',
              // height: 7,
              // width: 7,
              // ),
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
