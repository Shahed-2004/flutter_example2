import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('توصيل بدون تلامس'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'توصيل بدون تلامس',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Text(
                'عند تقديم الطلب، اختر خيار "التوصيل بدون تلامس" وسيترك المندوب طلبك عند الباب.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // إضافة الإجراء عند الضغط على الزر
                },
                child: Text('اطلب الآن'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
