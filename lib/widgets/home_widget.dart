
import 'package:citation1/const_list/azkar_list.dart';
import 'package:citation1/const_list/items_list.dart';
import 'package:citation1/models/home_model.dart';
import 'package:citation1/pages/category_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class HomeWidget extends StatelessWidget {
  const HomeWidget ({Key? key, required this.homeModel,}) : super(key: key);
 final HomeModel homeModel;

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context){
                    return CategoryPage(categoryMap: azkar);
                  }));
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 110.h,
                color: Color(0xffB8B7BE),
                child: Center(
                  child: Text(homeModel.name,
                    style: TextStyle(color: Colors.white,fontSize: 30.sp),),
                ),
              ),
            ),
          );
        }
  }
