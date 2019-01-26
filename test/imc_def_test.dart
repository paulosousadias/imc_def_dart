import 'package:flutter_test/flutter_test.dart';

import 'package:imc_def/imc_def.dart' as imc;

void main() {
  test('adds one to input values', () {
    // final calculator = Calculator();
    // expect(calculator.addOne(2), 3);
    // expect(calculator.addOne(-7), -6);
    // expect(calculator.addOne(0), 1);
    // expect(() => calculator.addOne(null), throwsNoSuchMethodError);
    
    imc.messagesBuilders.values.forEach((b) {
      print((b.build() as imc.ImcMessage).toString());
    });
    
    print("0x${16.toRadixString(16)}");
  });
  
}
