import 'package:math_expressions/math_expressions.dart';

class Hesap {
  var answer = '0.0';
  static var islemListesi = "";
  double sonuc = 0;
  int islemListesiIndex = 0;
  double islemSonucu = 0;
  static double gonderilecekIslemSonucu = 0;
  String sayi1 = "";
  String sonucBulma() {
    var expression = islemListesi;
    Parser p = Parser();
    Expression mathExpression = p.parse(expression);
    ContextModel cm = ContextModel();
    double eval = mathExpression.evaluate(EvaluationType.REAL, cm);
    answer = eval.toString();
    print(answer);
    return answer;
  }
}
