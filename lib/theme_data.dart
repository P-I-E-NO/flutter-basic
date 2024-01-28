import 'package:flutter/material.dart';

ThemeData appTheme(BuildContext context) => ThemeData(
      scaffoldBackgroundColor: const Color(0xffFDFDFD),
      inputDecorationTheme: InputDecorationTheme(
        hoverColor: Colors.transparent,
        suffixIconColor: Color(0xffEFEFEF),
        filled: false,
        prefixStyle: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w600,
          fontSize: 16,
        ),
        labelStyle: Theme.of(context).textTheme.labelLarge!.copyWith(
              color: Color(0xffEFEFEF),
            ),
        border: InputBorder.none,
      ),
      textTheme: const TextTheme(
        headlineLarge: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
