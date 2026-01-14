/**
 * Funcion de inicio del programa
 * Autor: Ángel
 * Fecha: 14/01/2026
 */

void main(List<String> arg) {
  var variable = "variable"; //Esto es un comentario de línea

  /*
    Buenos dias
    hoy es miercoles
  */
  for(int i = 0; i<arg.length; i++) {
    print("Hola ${arg.isNotEmpty ? arg[i] : "invitado"}");
  }
  print("Hola ${arg.isNotEmpty ? arg[0] : "invitado"}");

  //Buenas prácticas para nombrar variables
  var mand_5656HJJJJJ = "Algo";
  String nombreApellidos = "Ángel Gallardo";
  double precioConIva = 43.3;
  double precio_sin_iva = 46.33;
  //double class = 14.56; no valido

  //Tipos de datos en Dart

  //numericos
  int edad = 22; //Enteros
  double precio = 25.4; //Decimales
  num precio2 = 15; //Puede ser decimal o entero

  edad += 1;
  // edad = 27.3; no premitido
  precio2 = 25.7;

  // Boleans
  bool esCierto = true;
  esCierto = false;

  // String o cadena de caracteres
  String texto1 = "Esto es un texto. \nAhora estoy en otra línea";
  String texto2 = 'Esto es otro texto';
  String texto3 = '''
Esto
    es
      un
        texto
          multilínea
          ''';

  print(texto1);
  print(texto2);
  print(texto3);

  //Listas
  List<String> frutas = ["Platano", "Fresa", 'Manzana'];
  List<int> edades;
  edades = [];
  edades.add(18);
  edades.add(22);
  print(edades);

  //Mapas
  Map<String, int> ages = {'Ángel': 22, "Pepe": 33, "Paco": 0};
  print(ages);
  ages['Maria'] = 44; //Añadir al map si no existe
  print(ages);
  ages["Pepe"] = 55;
  print(ages);

  //Sets
  Set<String> colores = {"Azul", "Amarillo", "Verde"}; //No se pueden repetir valores
  print(colores);
  colores.add("Azul");
  print(colores);
  colores.add("Rojo");
  print(colores);
  
  //dynamic. puede ser cualquier dato y también null
  dynamic dato = "Soy un texto";
  dato = true;
  dato = 22;
  dato = null;

  //Object. Puede ser cualquier tipo de dato, menos null
  Object dato2 = 22;
  dato2 = false;
  dato2 = {45: "Map"};
  //dato2 = null; error

  //Declarar una variable que puede ser null
  int? precio4;
  precio4 = null;

  //Variable inmutables y constantes

  //const. Es una constante en tiempo de compilación.
  //final. Es una constante en tiempo de ejecución.

  //const ahora = DateTime.now(); No permitido
  final ahora = DateTime.now();
  //ahora = DateTime.now(); No permitido. No se puede modificar el valor de un final
  print("La fecha de ahora es $ahora");
  const String ciudad = "madrid";
  //ciudad = "Pinto"; no permitido.

  //late
  late DateTime luego;
  //Esta variable no la inicializo ahora, pero te prometo que la inizializaré más tarde.
  
  //Declarar variables de forma explicita o inferido

  //Tipo inferido
  var color = "Naranja";
  //color = 35; No permitido
  var dato18;
  print("La variable dato18 es de tipo: ${dato18.runtimeType} ");
  dato18 = 11;
  print(dato18);
  print("La variable dato18 es de tipo: ${dato18.runtimeType} ");
  dato18 = "pepe";
  print(dato18);
  print("La variable dato18 es de tipo: ${dato18.runtimeType} ");

  //Tipo implicito
  String? text18;
  text18 = "Soy texto18";
  print(text18);
}