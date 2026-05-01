import 'dart:io';

void main() {
  int contador = 0;

  print('CONTADOR DE INCREMENTO VARIABLE');
  print('Valor actual: $contador');

  while (true) {
    print('\nOpciones: [1] +1  |  [2] +5  |  [3] -  |  [4] Salir');
    stdout.write('Elige una opción: ');
    String? entrada = stdin.readLineSync()?.trim();

    if (entrada == '1') {
      contador += 1;
    } else if (entrada == '2') {
      contador += 5;
    } else if (entrada == '3') {
      if (contador > 0) {
        contador -= 1;
      } else {
        print('El contador no puede bajar de 0.');
      }
    } else if (entrada == '4') {
      print('Saliendo del programa...');
      break;
    } else {
      print('Opción no válida.');
    }

    print('Valor actual: $contador');
  }
}
