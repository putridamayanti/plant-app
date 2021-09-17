import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plantie_app/constants.dart';

class DetailButton extends StatelessWidget {
  final icon;

  const DetailButton({Key? key, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      margin: EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        color: Colors.white,
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 0),
                blurRadius: 15,
                color: primaryColor.withOpacity(0.2)
            ),
            BoxShadow(
              offset: Offset(-15, -15),
              blurRadius: 20,
              color: Colors.white
            )
          ],
        borderRadius: BorderRadius.circular(20)
      ),
      child: Center(
        child: SvgPicture.asset(icon, width: 40,),
      ),
    );
  }
}
