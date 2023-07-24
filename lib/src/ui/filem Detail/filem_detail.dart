import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widget/costom_Button.dart';


class FilemDetailScreen extends StatefulWidget {
  const FilemDetailScreen({super.key});

  @override
  State<FilemDetailScreen> createState() => _FilemDetailScreenState();
}

class _FilemDetailScreenState extends State<FilemDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 300.sp,
            width: double.infinity,
            decoration:const BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(image: AssetImage('assets/images/kgfBaner.png'),fit: BoxFit.cover),
            ),
          ),
          Expanded(
            child: Container(
              height: double.infinity,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('genres',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),

          Row(
            children: [
              Text('khan'),
              //CustomButton(height: 10,text: 'Action',color: Colors.blue.shade400,),
              // const SizedBox(width: 5,),
              // CustomButton(height: 10,width: 20,text: 'Thriller',color: Colors.pink.shade400,),
              // const SizedBox(width: 5,),
              // CustomButton(height: 10,width: 20,text: 'Science',color: Colors.indigo.shade400,),
              // const SizedBox(width: 5,),
              // CustomButton(height: 10,width: 20,text: 'Fiction',color: Colors.orange.shade400,),
            ],
          ),
          const Divider(thickness: 1,color: Colors.black,),

           //const SizedBox(height: 8,),

           const Text('Overviwes',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),

                ],
              ),
              )
          ),
        ],
      ),
    );
  }
}