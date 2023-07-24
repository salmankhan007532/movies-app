import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class TopSearchScreen extends StatefulWidget {
  const TopSearchScreen({super.key});

  @override
  State<TopSearchScreen> createState() => _TopSearchScreenState();
}

class _TopSearchScreenState extends State<TopSearchScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions:const [
            TextField(
              decoration: InputDecoration(
                hintText: 'search here'
              ),
            ),
          ],
        ),
        body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context ,  index){
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20 , vertical: 10),
              child: Container(
                height: 100.sp,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Container(
                      height: 100.sp,
                      width: 120.sp,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20),
                        image:const DecorationImage(image: AssetImage('assets/images/kgfBaner.png'),fit: BoxFit.cover),
                      ),
                    ),
                    //const Text('Movies name',style: TextStyle(fontSize: 15,color: Colors.white),),
                     Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: 10.sp, right: 15.sp),
                        child:const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                             Column(
                              children: [
                                Text('Movies name',style: TextStyle(fontSize: 15,color: Colors.white)),
                                Text('Movies name',style: TextStyle(fontSize: 15,color: Colors.white)),
                              ],
                             ),
                             Icon(Icons.settings),
                            
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          }
          ),
      ),
       );
  }
}