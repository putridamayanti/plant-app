import 'package:flutter/material.dart';
import 'package:plantie_app/constants.dart';
import 'package:plantie_app/screens/detail_product_screen.dart';

class CardProduct extends StatelessWidget {
  final size, image, title, country, price;

  const CardProduct({Key? key, this.size, this.image, this.title, this.country, this.price}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => DetailProductScreen()));
      },
      child: Container(
        width: size.width * 0.4,
        margin: EdgeInsets.only(left: 15, right: 10, top: 15, bottom: 15),
        decoration: BoxDecoration(
          color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                  offset: Offset(0, 3),
                  blurRadius: 15,
                  color: primaryColor.withOpacity(0.2)
              )
            ]
        ),
        child: Column(
          children: [
            Container(
              height: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20)
                ),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(image),
                )
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(text: TextSpan(
                    children: [
                      TextSpan(
                        text: '$title\n',
                        style: TextStyle(
                          color: textColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w600
                        )
                      ),
                      TextSpan(
                        text: country,
                        style: TextStyle(
                          color: primaryColor,
                          fontSize: 12
                        )
                      )
                    ]
                  )),
                  Text('\$$price', style: TextStyle(
                    color: primaryColor,
                    fontWeight: FontWeight.bold
                  ),)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
