import 'package:citation1/const_list/azkar_list.dart';
import 'package:citation1/models/category_model.dart';
import 'package:citation1/widgets/category_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CategoryPage extends StatefulWidget {
  var categoryMap;

   CategoryPage( {Key? key, required this.categoryMap,}) : super(key: key);
  static String id = 'CategoryPage';


  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  late final Map<String, CategoryModel> categoryMap;
  @override
  Widget build(BuildContext context) {
final categoryMap = ModalRoute.of(context)?.settings.arguments as Map<String,CategoryModel>;
    return ListView.builder(
          itemCount: categoryMap.length,
          itemBuilder: (context,index){
            String key =categoryMap.keys.elementAt(index);
            CategoryModel categoryModel = categoryMap[key]!;
            return CategoryWidget(categoryModel: categoryModel);
          }
      );

  }
}



