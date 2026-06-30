import 'package:flutter/material.dart';
import 'package:rp/razorpay_payment.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Razorpay payment gateway',
      debugShowCheckedModeBanner: false,
      home: const RazorpayPage(),
    );
  }
}
