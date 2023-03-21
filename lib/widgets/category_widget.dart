import 'package:citation1/models/category_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CategoryWidget extends StatefulWidget {
   CategoryWidget({Key? key, required this.categoryModel}) : super(key: key);

   final CategoryModel categoryModel;

  @override

  State<CategoryWidget> createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {

  @override
  void initState() {
    super.initState();
    _initialUnknownValue = widget.categoryModel.no;
    _counter = _initialUnknownValue;
  }
  int _initialUnknownValue = -1;
  late int _counter;
  void _decrementCounter() {
    setState(() {
      if (_counter > 0) {
        _counter--;
        widget.categoryModel.no--;
      }
    });
  }

  void _resetCounter() {
    setState(() {
      widget.categoryModel.no = _initialUnknownValue;
      _counter = _initialUnknownValue;
    });
  }
  @override

  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text(widget.categoryModel.title,
          style: TextStyle(color: Colors.white,fontSize: 28.sp),),
      ),
      backgroundColor: Colors.blueGrey,
      body: Padding(
        padding:  EdgeInsets.symmetric(vertical: 20.h,horizontal: 10.h),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black26),
            color: Colors.blueGrey[700],
          ),
          height: 470.h,
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  if (widget.categoryModel.no > 0) {
                    _decrementCounter();
                  } else {
                    setState(() {
                      print('ok');
                    });
                  }
                },
                child: Container(
                  color: Color(0xffB8B7BE),
                  height: 90.h,
                  width: double.infinity,
                  child:Row(

                    children: [
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: IconButton(
                            color: Colors.white,
                            onPressed: (){
                          setState(() {
                            _resetCounter();

                          });
                        },
                            icon: Icon(Icons.restart_alt_rounded)),
                      ),
                      SizedBox(width: 120.w,),
                      Text(_counter != _initialUnknownValue ? _counter.toString() : '${_initialUnknownValue}',style: TextStyle(
                          fontSize: 50.sp,color: Colors.white,fontWeight: FontWeight.bold),),

                    ],
                  ) ,
                ),
              ),
              Container(
                height: 360.h,
                child: IntrinsicHeight(
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      Text(widget.categoryModel.title,style: TextStyle(
                        fontSize: 20.sp,color: Colors.red,fontWeight: FontWeight.bold),
                        textDirection: TextDirection.rtl,
                      ),
                      Text(widget.categoryModel.content,style: TextStyle(
                          fontSize: 22.sp,color: Colors.white),
                        textDirection: TextDirection.rtl,
                      ),
                      Text(widget.categoryModel.end,style: TextStyle(
                          fontSize: 20.sp,color: Colors.green),
                        textDirection: TextDirection.rtl,
                      ),

                    ],
                  ),
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}