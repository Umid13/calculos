
import 'package:flutter/material.dart';
 TextEditingController controller_A=TextEditingController(text: '0');
  TextEditingController controller_B=TextEditingController(text: '0');
  TextEditingController controller_C=TextEditingController(text: '');
void fn(){
int num1 = int.parse(controller_A.text);
int num2 = int.parse(controller_B.text);
int natija = num1+num2;
print(natija);
}
void minus(){
int num1 = int.parse(controller_A.text);
int num2 = int.parse(controller_B.text);
int natija = num1-num2;
print(natija);
}
void bolish(){
int num1 = int.parse(controller_A.text);
int num2 = int.parse(controller_B.text);
double natija = num1/num2;
print(natija);
}
void kop(){
int num1 = int.parse(controller_A.text);
int num2 = int.parse(controller_B.text);
int natija = num1*num2;
print(natija);
}
void  main() {

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(15),
              child: TextField(
                controller: controller_A,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'First number',
                ),
              ),
            ),
             Container(
              margin: EdgeInsets.all(15),
              child: TextField(
                controller: controller_B,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Second number',
                ),
              ),
            ),
            TextButton(onPressed: fn, child: Text('+',style: TextStyle(fontSize: 20),)),
            TextButton(onPressed: minus, child: Text('-',style: TextStyle(fontSize: 20),)),
            TextButton(onPressed: bolish, child: Text('/',style: TextStyle(fontSize: 20),)),
            TextButton(onPressed: kop, child: Text('*',style: TextStyle(fontSize: 20),)),
          ],
        )
      ),
    )
  );
}
