import 'package:flutter/material.dart';
import 'package:savor/core/utils/app_colors.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key, required this.onTap});
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Color(0xff59413B),
      onTap: onTap,
      decoration: InputDecoration(
        hintText: 'Search a Meal...',
        hintStyle: TextStyle(
          fontSize: 12,
          color: Color.fromARGB(255, 147, 113, 105),
        ),
        fillColor: Color(0xffF0EDE9),
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(color: Color(0xffF0EDE9)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(color: Color(0xffF0EDE9)),
        ),
        focusedBorder: outlineInputBorder(),
        prefixIcon: Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
          ),
          child: Icon(Icons.search, color: AppColors.mainColor),
        ),
      ),
    );
  }

  OutlineInputBorder outlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
      borderSide: BorderSide(color: Color(0xffF0EDE9)),
    );
  }
}
