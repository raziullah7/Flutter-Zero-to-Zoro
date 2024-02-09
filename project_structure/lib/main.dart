import 'package:flutter/material.dart';

// when writing arguments in curly braces, the positional nature of the
// arguments is overridden and we have to manually define which value is
// asigned to which identifier during the function call

// function with named arguments
// add [] around positional argument(s) to make them optional
void sum1(int num1, int num2) {
  num1 + num2;
}

// function with named arguments (named arguments are optional)
// add the 'required' before the named argument(s) to make them compulsory
void sum2({int num1 = 0, int num2 = 0}) {
  num1 + num2;
}

void main() {
  // the main start of the file
  runApp(
    const MaterialApp(
      title: 'Flutter App',
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    ),
  );

  // positional nature of arguments can cause problems
  // we overwrite the positional nature by adding {} in the definition
  // sum1(12, 8);

  // in this invocation, we have to add the identifier labels of arguments
  // all of the below work becasue named arguments are optional
  // sum2(num1: 12, num2: 8);
  // sum2(num1: 12);
  // sum2(num2: 8);
  // sum2();
}
