class Persona {
  String nombre;
  int edad;

  Persona(this.nombre, this.edad);

  void saludar() {
    print("Hola, me llamo $nombre y tengo $edad años");
  }

  String presentacion() {
    return "$nombre ($edad años)";
  }
}

//Clase sin constructor
class alumno{
  String? nombre;
  String? apellidos;

  void saludar() {
    print("Hola, me llamo $nombre $apellidos");
  }
}

//Constructores con parametros opcionales
class Estudiante{
  String nombre;
  int edad;
  String? especialidad;
  double? promedio;

  Estudiante(this.nombre, this.edad, [this.especialidad, this.promedio = 0]);
  String info() {
    String esp = especialidad ?? "No definida";
    return "$nombre - Edad: $edad - Especialidad: $esp - Promedio: $promedio";
  }

  //Metodo toString()
  // @override // no es obligatorio
  String toString() {
    return "$nombre, $edad, $especialidad, $promedio";
  }
}

//inicializacion y valores por defecto
class Producto{
  String nombre;
  double precio;
  int stock = 0;
  bool disponoble = false;
  List<String> categorias = [];

  Producto(this.nombre, this.precio);

  void agregarStock(int cantidad) {
    stock += cantidad;
    if(stock > 0) disponoble = true;
  }

  void reducirStock(int stock) {
    this.stock -= stock;
    if(this.stock <= 0) disponoble = true;
  }

  String toString() {
    return "$nombre, $precio, $stock, $disponoble, $categorias";
  }
}

//Composicion de objetos
class Motor {
  String tipo;
  double cilindrada;
  int potencia;

  Motor(this.tipo, this.cilindrada, this.potencia);

  String info() => '$tipo - $cilindrada cc - $potencia';
}

class Conductor {
  String nombre;
  int edad;
  String licencia;

  Conductor(this.nombre, this.edad, this.licencia);

  String info() => "$nombre, $edad, $licencia";
}

class Auto {
  String marca;
  String modelo;
  Motor motor;
  Conductor? conductor;

  Auto(this.marca, this.modelo, this.motor, [this.conductor]);

  void mostrarDetalles() {
    print("Auto: $marca, $modelo");
    print("Motor: ${motor.info()}");
    if(conductor != null) {
      print("Conductor: ${conductor!.info()}");
    }
  }

  void asignarConductor(Conductor c) {
    conductor = c;
    print("Conductor asignado ${c.nombre}");
  }
} 

//Propiedades privadas y Getters / Setters
class Cuenta {
  String _titular; //propiedades con _ solo se acceden dentro de la clase
  double _saldo;
  int numeroCuneta;

  Cuenta(this._titular,this.numeroCuneta, this._saldo);

  double get saldo{
    return _saldo;
  }

  String get titular{
    return _titular;
  }

  set saldo(double nuevoSaldo){
    if(nuevoSaldo >= 0) _saldo = nuevoSaldo;
    else print("Error: El saldo no puede ser negativo");
  }

  set titular(String titular){
    _titular = titular;
  }

  String toString() {
    return "Titular: $_titular, Nº Cuenta: $numeroCuneta, Saldo: $_saldo";
  }
}

class Coche {
  String marca;
  String modelo;
  int anio;
  String combustible;

  Coche(this.marca, this.modelo, this.anio, this.combustible);
  Coche.electrico(this.marca, this.modelo, this.anio) : combustible = "Electrico";
  Coche.fromString(String datos) : 
    marca = datos.split(',') [0].trim(), //.trim() quita los espacios en blanco
    modelo = datos.split(',')[1].trim(),
    anio = int.parse(datos.split(',')[2].trim()),
    combustible = datos.split(',')[3].trim();

  void mostrarInfo() {
    print("$marca, $modelo, $anio, $combustible");
  }

  // String toString() {
  //   return "$marca, $modelo, $anio, $combustible";
  // }
}

//parametros nombrados
class Usuario{
  String nombre;
  int edad;
  String email;
  bool activo;
  String? telefono;

  Usuario({
    //obligatorios. required
    required this.nombre,
    required this.edad,
    required this.email,
    //sin required serian opcionales
    this.activo = true,
    this.telefono
  });

  String resumen() {
    String estado = activo ? "Activo" : "Inactivo";
    String tel = telefono ?? "Sin telefono";
    return "$nombre ($edad años) - $email - $estado - $tel";
  }
}

//Herencia. Una clase hereda propiedades y metodos de la clase padre
//Clase abstracta. no se puede instanciar objetos

abstract class Animal {
  String nombre;
  int edad;

  Animal(this.nombre, this.edad);

  void envejecer() {
    edad++;
    print("$nombre ahora tiene $edad años");
  }

  void hacerSonido(); //Obligando a implementar este metodo
  void dormir() {
    print("$nombre esta durmiendo.....");
  }
}

//Clase hija
class Gato extends Animal {
  String raza;

  Gato(String nombre, int edad, this.raza) : super(nombre, edad);

  @override
  void hacerSonido() {
    print("Miau");
  }

  String toString() {
    return "$nombre, $edad, $raza";
  }
}

class Pajaro extends Animal {
  double alturaVuelo;

  Pajaro(String nombre, int edad, this.alturaVuelo) : super(nombre, edad);
  
  @override
  void hacerSonido() {
    print("Pio Pio");
  }

  void volar() {
    print("$nombre esta volando a $alturaVuelo m de altura");
  }  
  
}

//Mixin: Una forma de reutilizar codigo sin herencia
//Permite que una clase tenga caracteristicas de multiples mixins.
//Diferencia con una herencia: No es una relacion de "es un"
//sino "tiene capacidad de"
mixin CapacidadDeVolar {
  void volar() {
    print("Estoy volando");
  }
}

mixin CapacidadDeNadar{
  void nadar() {
    print("Estoy nadando");
  }
}

mixin CapacidadDeSaltar{
  void saltar() {
    print("Estoy saltando");
  }
  void nada() {
    print("No hago nada");
  }
}

class Rana extends Animal with CapacidadDeNadar, CapacidadDeSaltar {
  Rana(String nombre, int edad) : super(nombre, edad);
  
  @override
  void hacerSonido() {
    print("Croac");
  }
}

//Genericos.permiten una clase que funcione con cualquier tipo de datos
class Caja<T> {
  List<T> items = [];

  void guardar(T item) {
    items.add(item);
    print("Guardado $item");
  }
  String toString() {
    print(items);
    return items.runtimeType.toString();
  }
}

//Propiedades y metodos estaticos
//Estatico, pertenece a la clase, no al objeto
class Persona2 {
  static int _conteo = 0; //Propiedad estatica
  String nombre;
  int edad;

  Persona2(this.nombre, this.edad) {
    _conteo++;
  }
  void saludar() {
    print("Hola, soy $nombre");
  }

  static void mostrarTotalPersonas() {
    print("Total de personas creadas: $_conteo");
  }
}