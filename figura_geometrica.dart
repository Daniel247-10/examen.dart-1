class Figura {
  String nombre;
  String color;

  Figura(this.nombre, this.color);

  void describir() {
    print('Soy un $nombre de color $color');
  }
}

class Circulo extends Figura {
  Circulo(String color) : super('Círculo', color);

  void calcularArea(double radio) {
    double area = 3.1416 * radio * radio;
    print('Área del círculo: $area');
  }
}

void main() {
  var cuadrado = Figura('Cuadrado', 'Rojo');
  cuadrado.describir();

  var circulo = Circulo('Azul');
  circulo.describir();
  circulo.calcularArea(5);
}
