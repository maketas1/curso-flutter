void main() {
  //Switch con expresiones
  String tipoVehiculo = "coche";
  String mensaje = switch(tipoVehiculo) {
    'coche' => 'Vehiculo de cuatro ruedas',
    'moto' => 'Vehiculo de dos ruedas',
    'bici' => 'Vehiculo sin motor',
    _ => 'Vehiculo desconocido'
  };

  print(mensaje);

  //Switch con coincidencia de patrones
  dynamic valor = "Manolo";
  switch (valor) {
    case int n when n > 0 :
      print("Numero positivo: $n");
      break;
    case int n when n < 0:
      print("Numero negativo: $n");
      break;
    case int n when n == 0:
      print("Numero 0");
      break;
    case String s:
      print("E un texto: $s");
      break;
    default:
      print("Valor desconocido");
      break;
  }

  //bucles con etiquetas
  externo:
  for(int i = 1; i <= 3; i++) {
    for(int j = 1; j <= 3; j++) {
      if(i == 2 && j == 2) {
        print("He realizado un break");
        break externo;
      }
      print('[$i, $j]');
    }
  }

  //for con multiples variables
  for(int i = 0, j = 10, h = 33; i < 5; i++, j--, h+=2) {
    print("i = $i, j = $j, h = $h");
  }

  //iteraciones sobre map
  Map<String, int> edades = {"Ana": 25, "Luis": 30, "Maria": 28};
  //entries. Pares de clave y valor
  //values. valores
  //keys. claves
  for(var par in edades.entries) {
    print("Nombre ${par.key}");
    print("Edad ${par.value}");
  }

  for(var clave in edades.keys) {
    print("Nombre $clave");
  }

  //For Each con funciones anonimas
  //Funciones anonimas. forma extendida
  // (parametro) {
  //   multiples sentencias; return valor
  // }
  //Funciones anonimas. forma corta o funcion flecha
  // (parametro) => expresion;

  //var valor3 = (numero)=> numero * 2;

  List<int> numeros = [12, 1, 11, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  numeros.forEach (
    (numero){ print("Numer $numero * 2: ${numero*2}"); }
  );

  numeros.forEach (
    (numero) => print("Numer $numero * 2: ${numero*2}")
  );

  //where. filtrado que retorna un ieterable con elementos que cumplan la condicion
  var pares = numeros.where((n) => n % 2 == 0).toList();
  pares.sort();
  print("$pares de tipo ${pares.runtimeType}");
  numeros.sort();
  print(numeros);

  //Assert (solo funciona en modo depuracion)
  //si la condicion es falsa lanza una excepcion y detiene la ejecucion
  int velocidad = 120;
  print("Provando assert");
  assert(
    velocidad <= 120, "Velocidad excede limite"
  );

  print("Velocidad valida: $velocidad km/horas");

  //Switch con multiples condiciones                  
  int mes = 12;
  String estacion = switch(mes) {
    12 || 1 || 2 => "Invierno",
    3 || 4 || 5 => "Primavera",
    6 || 7 || 8 => "Verano",
    9 || 10 || 11 => "Otoño",
    _ => "Mes invalido"
  };

  print("Mes $mes: $estacion");

  //Switch con records
  //Records. Almacena datos de cualquier tipo, pero no se puede modificar
  //Record posicionales
  var coordenadas = (10, 12, 15, "Manolo");

  print(coordenadas.$1);
  print(coordenadas.$2);
  print(coordenadas.$3);
  print(coordenadas.$4);
  
  //Record nombrados
  var usuario = (nombre: "Ana", edad : 30);
  print("Nombre: ${usuario.nombre} y edad ${usuario.edad}");

  //Recods mixtos
  var datos = ("Felipe", edad: 44, true);
  print(datos.$1);
  print(datos.edad);
  print(datos.$2);

  var coordenada = (2, 3);
  String cuadrante = switch(coordenada) {
    (int x, int y) when x > 0 && y > 0 => "Cuadrante I",
    (int x, int y) when x < 0 && y > 0 => "Cuadrante II",
    (int x, int y) when x < 0 && y < 0 => "Cuadrante III",
    (int x, int y) when x > 0 && y < 0 => "Cuadrante IV",
    _ => "Sobre un eje"
  };

  print(cuadrante);
}