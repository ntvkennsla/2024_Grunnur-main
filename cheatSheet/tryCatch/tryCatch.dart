void main(){
  double? calculate(double num1, double num2, String operator){
    try{
      switch(operator){
        case "+":
          return num1 + num2;
        case "-":
          return num1 - num2;
        case "*":
          return num1 * num2;
        case "/":
          return num1 / num2;
        default:
          print("Unknown operator");
          return null;
      }
    }catch(e){
      print("error $e");
      return null;
    }

    //switch(operator) + - * /

    //catch

    //return null i default switch og null i catch
  }

  double? num = calculate(10,0, "%");
  print(num);
}