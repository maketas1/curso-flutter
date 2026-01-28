import 'ejemplo8.dart';

void main() {
  var persona1 = Persona("Ángel", 22);
  print("${persona1.presentacion()}");

  var estudiante1 = Estudiante("Ángel", 22);
  print(estudiante1.info());

  Producto producto1 = Producto("Telefono", 50.0);
  producto1.agregarStock(20);
  print(producto1.toString());

  Motor motor1 = Motor("V8", 2000, 100);
  Conductor conductor1 = Conductor("Ángel", 22, "B1");
  Auto auto1 = Auto("Ford", "GT40", motor1);
  auto1.mostrarDetalles();
  auto1.asignarConductor(conductor1);
  auto1.mostrarDetalles();

  auto1.conductor!.edad += 1;
  auto1.mostrarDetalles();

  Cuenta cuenta1 = Cuenta("Ángel", 1234567890, 1234567890);
  // print("${cuenta1._titular} Numero de cuenta: ${cuenta1.numeroCuneta}"); //No se puede
  print("Numero de cuenta: ${cuenta1.numeroCuneta}");
  print("Titular: ${cuenta1.titular}");
  print(cuenta1.toString());
  cuenta1.saldo = -20;
  cuenta1.saldo = 20;
  print(cuenta1.toString());

  var coche1 = Coche("Ford", "Gt40", 1966, "Gasolina");
  var coche2 = Coche.electrico("Tesla", "S", 2020);
  coche1.mostrarInfo();
  coche2.mostrarInfo();
  var coches3 = Coche.fromString("Dodge, Challenger, 1965, Gasolina");
  coches3.mostrarInfo();

  var usuario1 = Usuario(nombre: "Ángel", edad: 22, email: "angel@gmail.com", telefono: "1234567890", activo: false);
  print(usuario1.resumen());

  var gato1 = Gato("Paco", 6, "Egipcio");
  gato1.envejecer();
  gato1.dormir();
  gato1.hacerSonido();
  print(gato1.toString());

  var pajaro1 = Pajaro("Piolin", 2, 234567890);
  pajaro1.volar();
  pajaro1.hacerSonido();

  var rana1 = Rana("Sr.Rana", 3);
  rana1.hacerSonido();
  rana1.nadar();
  rana1.nada();
  rana1.saltar();

  var caja1 = Caja<int>();
  caja1.guardar(20);

  var caja2 = Caja<dynamic>();
  caja2.guardar(1);
  caja2.guardar(true);
  caja2.guardar(coche1);
  caja2.guardar("Perico el de los palotes");
  print(caja2);

  var per1 = Persona2("Paco", 30);
  per1.saludar();
  var per2 = Persona2("Luis", 50);
  per2.saludar();
  var per3 = Persona2("Jose", 40);
  per3.saludar();
  Persona2.mostrarTotalPersonas();
}