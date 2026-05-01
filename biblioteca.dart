class Biblioteca {
  String nombre;
  String ciudad;
  int totalLibros;

  Biblioteca(this.nombre, this.ciudad, this.totalLibros);

  void prestarLibro(int cantidad) {
    if (cantidad <= totalLibros) {
      totalLibros -= cantidad;
      print('Prestados $cantidad libros. Quedan: $totalLibros');
    } else {
      print('No hay suficientes libros. Solo hay: $totalLibros');
    }
  }

  void devolver(int cantidad) {
    totalLibros += cantidad;
    print('Devueltos $cantidad libros. Total ahora: $totalLibros');
  }

  void mostrarEstado() {
    print('Biblioteca: $nombre');
    print('Ciudad: $ciudad');
    print('Libros disponibles: $totalLibros');
  }
}

class BibliotecaUniversitaria extends Biblioteca {
  int cupoEstudiantes;

  BibliotecaUniversitaria(
    String nombre,
    String ciudad,
    int totalLibros,
    this.cupoEstudiantes,
  ) : super(nombre, ciudad, totalLibros);

  void registrarEstudiante(String nombreEstudiante) {
    if (cupoEstudiantes > 0) {
      cupoEstudiantes -= 1;
      print('$nombreEstudiante registrado. Cupo restante: $cupoEstudiantes');
    } else {
      print('Sin cupo. No se puede registrar a $nombreEstudiante');
    }
  }
}

void main() {
  print('EJERCICIO 2');

  BibliotecaUniversitaria bib = BibliotecaUniversitaria(
    'Biblioteca Central',
    'Tarija',
    100,
    3,
  );

  print(' Estado inicial');
  bib.mostrarEstado();

  print('Préstamos ');
  bib.prestarLibro(10);

  print('Devolución ');
  bib.devolver(5);

  print('Registro de estudiantes ');
  bib.registrarEstudiante('Ana');
  bib.registrarEstudiante('Luis');
  bib.registrarEstudiante('Carla');
  bib.registrarEstudiante('Jorge');
}
