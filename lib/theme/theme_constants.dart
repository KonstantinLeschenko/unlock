// ignore_for_file: constant_identifier_names
import 'package:flutter/material.dart';

const COLOR_PRIMARY_LIGHT = Color(0xfffde0c7);
const COLOR_PRIMARY_DARK = Color(0xff141414);
const COLOR_MILK_WHITE = Color(0xffffead1);

ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: COLOR_PRIMARY_LIGHT,
    appBarTheme: const AppBarTheme(
        backgroundColor: COLOR_PRIMARY_LIGHT,
        titleTextStyle: TextStyle(color: Color(0xff5e747a)),
        iconTheme: IconThemeData(size: 40, color: Color(0xff97a7a4))),
    scaffoldBackgroundColor: COLOR_PRIMARY_LIGHT,
    drawerTheme: const DrawerThemeData(backgroundColor: COLOR_PRIMARY_LIGHT),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
          padding: const MaterialStatePropertyAll(EdgeInsets.all(10)),
          backgroundColor:
              MaterialStateProperty.all<Color>(const Color(0xffe7968b)),
          textStyle: const MaterialStatePropertyAll(
              TextStyle(color: Color(0xffffffff)))),
    ),
    textTheme:
        const TextTheme(displaySmall: TextStyle(color: Color(0xff5e747a))),
    textButtonTheme: const TextButtonThemeData(
        style: ButtonStyle(
            textStyle:
                MaterialStatePropertyAll(TextStyle(color: Colors.grey)))),            
    dialogTheme: const DialogTheme(
        backgroundColor: COLOR_PRIMARY_LIGHT,
        titleTextStyle: TextStyle(color: Colors.grey),
        contentTextStyle: TextStyle(color: Colors.grey)),
    iconTheme: const IconThemeData(size: 40, color: Color(0xff97a7a4)));

ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: COLOR_PRIMARY_DARK,
    appBarTheme: const AppBarTheme(
        backgroundColor: COLOR_PRIMARY_DARK,
        titleTextStyle: TextStyle(color: COLOR_MILK_WHITE),
        iconTheme: IconThemeData(size: 40, color: COLOR_MILK_WHITE)),
    scaffoldBackgroundColor: COLOR_PRIMARY_DARK,
    drawerTheme: const DrawerThemeData(backgroundColor: COLOR_PRIMARY_DARK),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        padding: const MaterialStatePropertyAll(EdgeInsets.all(8)),
        backgroundColor:
            MaterialStateProperty.all<Color>(const Color(0xffea3965)),
        textStyle:
            const MaterialStatePropertyAll(TextStyle(color: Color(0xffffffff))),
      ),
    ),
    textTheme:
        const TextTheme(displaySmall: TextStyle(color: COLOR_MILK_WHITE)),
    textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
            textStyle: const TextStyle(color: COLOR_MILK_WHITE))),
    dialogTheme: const DialogTheme(
        backgroundColor: COLOR_PRIMARY_DARK,
        titleTextStyle: TextStyle(color: COLOR_MILK_WHITE),
        contentTextStyle: TextStyle(color: COLOR_MILK_WHITE)),
    iconTheme: const IconThemeData(size: 40, color: COLOR_MILK_WHITE));
