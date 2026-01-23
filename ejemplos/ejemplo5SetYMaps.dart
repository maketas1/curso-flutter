void main() {
  //Set es una coleccion no ordenada de elementos unicos
  //No se puede acceder por indice
  //Tambien llamados conjuntos
  // Set<int> numeros = {1, 2, 3, 4, 4}; Borrara los repetidos
  Set<int> numeros = {1, 2, 3, 4};
  print(numeros);
  // print(numeros[2]); Error

  var letras = Set<String>.from(['a', 'b', 'c']);
  print(letras);
  var letras2 = "abt".split("").toSet();
  print("Letras2: $letras2, Tipo: ${letras2.runtimeType}");

  var vacio = <String>{};
  var vacio1 = Set<String>();
  var vacio2 = <String>[];
  var vacio3 = {}; //Crea un map
  print(vacio);
  print(vacio1.runtimeType);
  print(vacio2.runtimeType);
  print(vacio3.runtimeType);

  var frutas = {'Manzana', 'Pera', 'Naranja'};
  frutas.add("Melocoton");
  frutas.addAll(["Kiwi", "Fresa", "Pera"]);
  print(frutas);

  frutas.remove("Pera");
  print(frutas);

  print("¿Contiene naranja? ${frutas.contains("Naranja")}");
  print("¿Contiene uva? ${frutas.contains("Uva")}");

  print("Elementos del conjunto frutas: ${frutas.length}");

  //Union, Interseccion y Diferencia de dos conjuntos
  //Union une ambos conjutos pero solo si son del mismo tipo
  var setA = {1, 2, 3, 4, 5};
  var setB = {4, 5, 6, 7, 8};

  var union = setA.union(setB);
  print(union);

  //Interseccion. Elementos que estan en los dos conjuntos
  var interseccion = setA.intersection(setB);
  print(interseccion);

  //Diferencia: Elementos que estan en A, pero no en B;
  var diferencia = setA.difference(setB);
  print(diferencia);
  diferencia = setB.difference(setA);
  print(diferencia);

  //Verificar un subconjunto
  var subSet = {2, 3};
  print("¿{2,3} es subconjunto de A? ${subSet.difference(setA).isEmpty}");
  print("¿{2,3} es subconjunto de A? ${subSet.intersection(setA).length == subSet.length}");

  //Iterar sobre sets.
  var colores = {'rojo', 'verde', 'azul', 'amarillo'};
  for(var color in colores) {
    print("  -$color");
  }

  colores.forEach((color) => print(".  _$color"));

  //Metodos de transformacion. where, map, any, every
  var nums = {1, 2, 3, 4, 5, 6};
  var pares = nums.where((n) => n % 2 == 0).toSet();
  print(pares);

  var cuadrados = nums.map((n) => n * n).toSet();
  print(cuadrados);

  print("¿Hay algun elemento mayor que 5? ${nums.any((n) => n > 5)}");
  nums.remove(6);
  print("¿Hay algun elemento mayor que 5? ${nums.any((n) => n > 5)}");

  print("¿Todos los elementos son mayores que 0? ${nums.every((n) => n > 0)}");
  nums.add(-1);
  print("¿Todos los elementos son mayores que 0? ${nums.every((n) => n > 0)}");

  //Mapas (colecion de clave - valor)

  Map<String, int> edades = {"Paco" : 25, "Pepe" : 32, "Antonio" : 45};
  print(edades);
  var capitales = Map<String, String>();
  capitales["España"] = "Madrid";
  capitales["Francia"] = "Paris";
  print(capitales);

  //Map.fromEntries
  var entries = [
    MapEntry("Lunes", 1),
    MapEntry("Martes", 2),
    MapEntry("Miercoles", 3),
    MapEntry("Martes", 5)
  ];

  var diasSemanas = Map.fromEntries(entries);
  print(diasSemanas);

  //Acceder pro clave
  print(diasSemanas["Lunes"]);
  //Modificar valor
  diasSemanas["Martes"] = 2;
  print(diasSemanas);
  //Añadir nueva clave
  diasSemanas["Jueves"] = 4;
  diasSemanas.addEntries([MapEntry("Sabado", 6)]);
  diasSemanas.addAll({"Domingo" : 7, "Viernes" : 5});
  print(diasSemanas);
  
  print(diasSemanas["Patito"] ?? "Desconocido");

  //Metodos basicos

  print("¿Contiene el viernes? ${diasSemanas.containsKey("Viernes")}");
  print("¿Contiene el 6? ${diasSemanas.containsValue(6)}");

  print("Todas las claves ${diasSemanas.keys}");
  print("Todas los valores ${diasSemanas.values}");
  print("Cantidad de entries: ${diasSemanas.length}");

  //IsEmpty e isNotEmpty
  //Eliminar alguna entrie por clave
  diasSemanas.remove("Viernes");
  print(diasSemanas);

  //Vaciar el mapa
  diasSemanas.clear();
  print(diasSemanas);

  //Iteraciones
  //Usamos entries
  for(var entry in edades.entries) {
    print("Clave: ${entry.key}, Valor: ${entry.value}");
  }
  print("===============");
  for(var key in edades.keys) {
    print("Claves: $key. Valor: ${edades[key]}");
  }
  print("===============");
  for(var value in edades.values) {
    print("Valores: $value");
  }
  print("===============");
  edades.forEach((clave, valor){
    print("Claves: $clave. Valor: $valor");
  });

  //Metodos

  //putInAbsent: Agregar solo si la clave no existe
  capitales.putIfAbsent("Italia", () => "Roma");
  print(capitales);
  capitales.putIfAbsent("Italia", () => "Milan"); //No lo modifica
  print(capitales);

  capitales["Italia"] = "Milan";
  print(capitales);
  capitales.update("Italia", (_) => "Roma");
  print(capitales);
  capitales.update("Italia", (valor) => valor.toLowerCase());
  print(capitales);
  capitales.update("Alemania", (valor) => valor.toLowerCase(), ifAbsent: () => "berlin"); //En el supuesto de que no exista la clave
  print(capitales);

  //map()
  var precios = {'cafe' : 1.4, 'agua' : 0.5, 'vino' : 3.15};
  var precios10 = precios.map((key, value){

    return MapEntry(key, (value*1.10).toStringAsFixed(2));
  });

  print(precios10);

  //Crea una copia de un mapa en otro
  var copia = Map.from(precios);
  print(copia);
  
  var copia1 = Map.of(precios);
  print(copia1);

  var copia2 = precios; //Apunta a la misma direccion de memoria. Son el mismo objeto
  precios["Pan"] = 0.5;
  print(copia2);

  //removeWhere. Eliminar elementos cuando cumplen una condicion
  precios.remove((key, value) => value < 1);
  print(copia1);

  //Mapas anidados
  var empresa = {
    'departamentos' : {
      'IT' : {'empleados' : 15, 'presupuesto' : 500000},
      'Ventas' : {'empleados' : 45, 'presupuesto' : 3000000},
    },
    'ubicacion' : 'Madrid',
  };

  print(empresa);

  var departamentos = empresa['departamentos'] as Map; //Hacer un casting a Map
  var it = departamentos["IT"] as Map;
  print("Empleados epartamento IT: ${it["empleados"]}");
}