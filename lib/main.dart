import 'package:flutter/material.dart';
import 'package:expense_practice/expenses.dart';
void main() {
  runApp(
   

   MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Expenses(),

   )

  );
}



