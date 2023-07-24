import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/src/ui/home_screem.dart';

class MoviesType extends StatefulWidget {
  const MoviesType({super.key});

  @override
  State<MoviesType> createState() => _MoviesTypeState();
}

class _MoviesTypeState extends State<MoviesType> {
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
      body: GridView.builder(
        gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          ),
        itemCount: 10,
        itemBuilder: (context, index){
          return Padding(
            padding:  EdgeInsets.all(10.0.sp),
            child: Stack(
              children: [
                InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
                   const HomeScreen(),
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