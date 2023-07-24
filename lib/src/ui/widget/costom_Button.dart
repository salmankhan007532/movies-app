import 'package:flutter/material.dart';


class CustomButton extends StatelessWidget {
   CustomButton({super.key, this.height, this.width, this.color,required this.text,this.ontap});
  var height;
  var width;
  var color;
  var text;
  var ontap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        height:height ,
        width: width,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: Text(text,),
        ),
      ),
    );
  }
}