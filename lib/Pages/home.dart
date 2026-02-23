import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:landing_page_01/models/category_model.dart';
import 'package:landing_page_01/models/diet_recomendation.dart';

class HomePage extends StatefulWidget {
   HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CategoryModel> categories = [];
  List<DietModel> diets = [];

  void _getCategories() {
    categories = CategoryModel.getCategories();
  }

  void _getDiets() {
    diets = DietModel.getDiets();
  }

  void _getInitialInfo() {
    categories = CategoryModel.getCategories();
    diets = DietModel.getDiets();
  }

  @override
  void initState() {
    _getCategories();
  }

  @override
  Widget build(BuildContext context) {
    _getCategories();
    return Scaffold(
      appBar: appBar(),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _searchBar(),
          SizedBox(height: 40,),
          _categorySection(),
          SizedBox(height: 40,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'Recommendation \nfor Diets',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Container(
                // color: Colors.blue,
                height: 240,
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      return Container(
                        width: 210,
                        height: 240,
                        decoration: BoxDecoration(
                          color: diets[index].boxColor.withOpacity(0.5),
                          borderRadius:BorderRadius.circular(20),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) => SizedBox(width: 25,),
                    itemCount: diets.length,
                    scrollDirection: Axis.horizontal,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Column _categorySection() {
    return Column(
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
              height: 120,
              child: ListView.separated(
                itemCount: categories.length,
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ),
                  separatorBuilder: (context,index) => SizedBox(width: 25,),
                  itemBuilder: (context, index) {
                    return Container(
                      width: 100,
                      decoration: BoxDecoration(
                        color: categories[index].boxColor.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(18)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SvgPicture.asset(categories[index].iconPath),
                            ),
                          ),
                          Text(
                            categories[index].name,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                              fontSize: 14
                            ),
                          ),
                        ],
                      ),
                    );
                  }
              ),
            ),
          ],
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
