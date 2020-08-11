import 'dart:io';

void main() {
  print("Welcome to my calculator\n");
  calculator();
}

void calculator() {
  double firstNumber, secondNumber,result;
  String op;
  int flag = 1;
  while(flag == 1){
    print("Enter the first number :");
    firstNumber = double.parse(stdin.readLineSync());

    print("Enter the second number :");
    secondNumber = double.parse(stdin.readLineSync());

    print("Enter the operator :");
    op = stdin.readLineSync();

    Calculator calc = Calculator(firstNumber,secondNumber);

    if(op == "+"){
      result = calc.addition();
      print("Result is $result\n");
    }
    else if(op == "-"){
      result = calc.subtraction();
      print("Result is $result\n");
    }
    else if(op == "*"){
      result = calc.multiplication();
      print("Result is $result\n");
    }
    else if(op == "/"){
      if(secondNumber == 0){
          print("INFINITY!");
      }
      else{
        result = calc.division();
        print("Result is $result\n");
      }
    }
    else{
      print("Wrong Operator!\n");
    }
    print("Exit y/n?");
    if(stdin.readLineSync() == "y")
      flag = 0;
  }
  print("GoodBye");
}
class Calculator{
  double firstNumber,secondNumber;
  Calculator(double firstNumber,double secondNumber){
    this.firstNumber = firstNumber;
    this.secondNumber = secondNumber;
  }
  double addition(){
    return firstNumber + secondNumber;
  }
  double subtraction(){
    return firstNumber - secondNumber;
  }
  double multiplication(){
    return firstNumber * secondNumber;
  }
  double division(){
    return firstNumber / secondNumber;
  }
}


