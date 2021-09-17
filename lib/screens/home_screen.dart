import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plantie_app/components/big_card_product.dart';
import 'package:plantie_app/components/card_product.dart';
import 'package:plantie_app/components/section_title.dart';
import 'package:plantie_app/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    List images = [
      'assets/images/plant-1.jpeg',
      'assets/images/plant-2.jpeg',
      'assets/images/plant-3.jpeg',
      'assets/images/plant-4.jpeg',
      'assets/images/plant-5.jpeg',
      'assets/images/plant-7.jpeg',
      'assets/images/plant-8.jpeg',
      'assets/images/plant-9.jpeg',
      'assets/images/plant-10.jpeg'
    ];

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: SvgPicture.asset('assets/icons/menu.svg', color: backgroundColor, width: 25,),
          onPressed: () {

          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: size.height * 0.2,
              child: Stack(
                children: [
                  Container(
                    height: size.height * 0.2 - 34,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30)
                        )
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Plantie', style: TextStyle(
                            color: backgroundColor,
                            fontSize: 28,
                            fontWeight: FontWeight.w700
                        ),)
                      ],
                    ),
                  ),
                  Positioned(
                      bottom: 0,
                      child: Container(
                          width: size.width - 30,
                          margin: EdgeInsets.all(15),
                          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                          decoration: BoxDecoration(
                              color: backgroundColor,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(0, 5),
                                    blurRadius: 20,
                                    color: primaryColor.withOpacity(0.2)
                                )
                              ]
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: TextField(
                                  cursorColor: textColor,
                                  decoration: InputDecoration(
                                      hintText: 'Search',
                                      enabledBorder: InputBorder.none,
                                      focusedBorder: InputBorder.none
                                  ),
                                ),
                              ),
                              SvgPicture.asset('assets/icons/search.svg', width: 20, color: textColor,)
                            ],
                          )
                      )
                  )
                ],
              ),
            ),
            SectionTitle(
              title: 'Recomended',
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: images.map((e) => CardProduct(
                  size: size,
                  image: e,
                  title: 'Succulent',
                  country: 'Indonesia',
                  price: 324,
                )).toList(),
              ),
            ),
            SectionTitle(
              title: 'Popular',
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: images.map((e) => BigCardProduct(
                  size: size,
                  image: e,
                  title: 'Succulent',
                  country: 'Indonesia',
                  price: 324,
                )).toList(),
              ),
            ),
          ],
        ),
      )
    );
  }
}
