import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/src/ui/top_result/top_result.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Movies '),
        actions:const [
           TextField(
            decoration: InputDecoration(
              hintText: 'search here',
            ),
          )
        ],
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index){
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: Stack(
              children: [
                InkWell(
                  onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
                    TopSearchScreen()
                  ));
                },
                  child: Container(
                    height: 500.sp,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(10),
                      image:const DecorationImage(image: AssetImage('assets/images/kgfBaner.png'),fit: BoxFit.cover),
                    ),
                  ),
                ),
               
          
                 Positioned(
                  bottom: 66.sp,
                  left: 100.sp,
                  child: Text('Movies name',style: TextStyle(color: Colors.white, fontSize: 20.sp),),
                ),
                 
              ],
            ),
          );
        }
      ),
    );
  }
}