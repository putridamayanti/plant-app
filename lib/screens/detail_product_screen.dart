import 'package:flutter/material.dart';
import 'package:plantie_app/components/detail_button.dart';
import 'package:plantie_app/constants.dart';

class DetailProductScreen extends StatefulWidget {
  const DetailProductScreen({Key? key}) : super(key: key);

  @override
  _DetailProductScreenState createState() => _DetailProductScreenState();
}

class _DetailProductScreenState extends State<DetailProductScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Expanded(
                    child: Container(
                      height: size.height * 0.75,
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 40, bottom: 50),
                            child: IconButton(
                                onPressed: (){},
                                icon: Icon(Icons.arrow_back_ios)),
                          ),
                          DetailButton(
                            icon: 'assets/icons/sun.svg',
                          ),
                          DetailButton(
                            icon: 'assets/icons/thermometer.svg',
                          ),
                          DetailButton(
                            icon: 'assets/icons/wind.svg',
                          ),
                          DetailButton(
                            icon: 'assets/icons/drop.svg',
                          )
                        ],
                      ),
                    )
                ),
                Container(
                  width: size.width * 0.7,
                  height: size.height * 0.75,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(70)),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 10),
                            blurRadius: 20,
                            color: primaryColor.withOpacity(0.2)
                        )
                      ],
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/plant-5.jpeg')
                      )
                  ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 40),
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(text: TextSpan(
                      children: [
                        TextSpan(
                            text: 'Succulent\n',
                            style: TextStyle(
                                fontSize: 36,
                                color: textColor,
                                fontWeight: FontWeight.bold
                            )
                        ),
                        TextSpan(
                            text: 'Indonesia\n',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: primaryColor
                            )
                        )
                      ]
                  )),
                  Text('\$432', style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: primaryColor
                  ),)
                ],
              ),
            ),
            Row(
              children: [
                InkWell(
                  child: Container(
                    width: size.width / 2,
                    height: 70,
                    decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30)
                        )
                    ),
                    child: Center(
                      child: Text('Buy Now', style: TextStyle(
                          color: Colors.white
                      ),),
                    ),
                  ),
                ),
                InkWell(
                  child: Container(
                    width: size.width / 2,
                    height: 70,
                    child: Center(
                      child: Text('Description'),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      )
    );
  }
}
