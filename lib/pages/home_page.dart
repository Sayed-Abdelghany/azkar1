import 'package:citation1/const_list/items_list.dart';
import 'package:citation1/widgets/home_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('آذكار الصباح والمساء',
          style: TextStyle(fontSize: 28.sp),),
        centerTitle: true,
      ),
      backgroundColor: Colors.blueGrey,
      body: ListView.builder(
    itemCount: items.length,
    itemBuilder: (context,index){
    return HomeWidget( homeModel: items[index],);
    }
      )
    );
  }
}
