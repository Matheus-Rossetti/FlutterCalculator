import 'dart:io';


double sum(double num1, double num2){
  print('\nresultado: ${num1 + num2}');
  return(num1 + num2);
}
double sub(double num1, double num2){
  print('\nresultado: ${num1 - num2}');
  return(num1 - num2);
}
double mult(double num1, double num2){
  print('\nresultado: ${num1 * num2}');
  return(num1 * num2);
}
double div(double num1, double num2){
  print('\nresultado: ${num1 / num2}');
  return(num1 / num2);
}


void calc1(){
  int op = 0;


  while(op != 5){

    print('Primeiro número: ');
    double num1 = double.parse(stdin.readLineSync()!);

    while(op != 5){

      print('\nOperação:\n  1 - Soma\n  2 - Subtração\n  3 - Multiplicação\n  4 - Divisão\n  5 - sair');
      String op = stdin.readLineSync()!;

      print('\nSegundo número: ');
      double num2 = double.parse(stdin.readLineSync()!);

      switch (op){
        case '+':
          num1 = sum(num1, num2);
        case '-':
          num1 = sub(num1, num2);
        case '*':
          num1 = mult(num1, num2);
        case '/':
          num1 = div(num1, num2);
      };
    }
  }
}


void calc2(){

  // pega o input
  // String exp = stdin.readLineSync()!;
  String exp = '10+5-8*9+6/2+45*3';
  
  // separa o input por operação '[sub,sum,mult,div],'
  RegExp delimiters = RegExp(r'(\d+\.?\d*)|([+\-*/])');
  // List<dynamic> expList = exp.split(delimiters);
  List<String> expList = delimiters.allMatches(exp).map((match) => match.group(0)!).toList();

  
  print(expList);

  for(int i=0;i<expList.length;i++){
    if(expList[i] == '*'){
      double num1 = double.parse(expList[i-1]);
      double num2 = double.parse(expList[i+1]);
      print(num1 * num2);
      break;
    };
  }
  
}

void main() {

  // calc1();

  calc2();

return;
}
