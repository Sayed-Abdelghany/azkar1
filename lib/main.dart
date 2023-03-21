import 'package:citation1/const_list/azkar_list.dart';
import 'package:citation1/const_list/items_list.dart';
import 'package:citation1/models/category_model.dart';
import 'package:citation1/models/home_model.dart';
import 'package:citation1/pages/category_page.dart';
import 'package:citation1/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(  CitationApp(
     // pass the azkar list to the CitationApp class
  ));
}
class CitationApp extends StatelessWidget {
  const CitationApp({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder:(context,id)=> MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'HomePage',
        routes: {
          'HomePage': (context) => HomePage(),
          // retrieve the index from the route arguments
          // String key = categoryMap.keys.elementAt(index);
          // CategoryModel category = categoryMap[key]!;
          // 'CategoryPage': (context) {
          //   int index = ModalRoute
          //       .of(context)!
          //       .settings
          //       .arguments as int;
          //   String key = azkar.keys.elementAt(index);
          //   CategoryModel category = azkar[key]!.first;
          //   return CategoryPage(
          //     categoryMap: {key: category},
          //   );
          },
         ),
    );
  }
}




