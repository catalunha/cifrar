import 'package:flutter_test/flutter_test.dart';
import 'package:cifrar_msg/cifrar_msg.dart';

void main() {
  test('adds one to input values', () {
    final cifrar = CifrarMsg(chave: 1, textoOriginal: 'a');
    expect(cifrar.encriptar(), 'b');
  });
}
