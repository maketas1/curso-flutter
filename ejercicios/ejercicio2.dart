import 'dart:io';

void ejercicio1() {
  stdout.write('Ingresa el total de la cuenta (€): ');
  String? cuentaStr = stdin.readLineSync();
  double? cuenta = double.tryParse(cuentaStr ?? '0');
  
  if (cuenta == null || cuenta <= 0) {
    print('❌ Cantidad inválida');
    return;
  }
  stdout.write('Calidad del servicio (excelente/bueno/regular): ');
  String? servicio = stdin.readLineSync()?.toLowerCase();
    
  int porcentaje = (servicio=="excelente") ? 20 : (servicio=="bueno") ? 15 : (servicio=="regular") ? 10 : 0;

  if(porcentaje == 0) {
    print("Valor no permitido");
  } else {
    ejercicio1_1(porcentaje, cuenta);
  }
}

void ejercicio1_1(int porcentaje, double cuenta) {
  double total = 0;
  double propina = 0;
  propina = cuenta * (porcentaje / 100);
  total = cuenta + propina;
  print("=== DESGLOSE ===");
  print("Subtotal: €$cuenta");
  print("Propina ($porcentaje%): €$propina");
  print("Total: €$total");
}

void ejercicio2() {
  stdout.write('Ingresa un año: ');
  String? anioStr = stdin.readLineSync();
  int? anio = int.tryParse(anioStr ?? '0');
  
  if (anio == null || anio <= 0) {
    print('❌ Año inválido');
    return;
  }

  bool esBisiesto = false;

  if(anio%4 == 0 && anio%100 != 0) {
    esBisiesto = true;
  } else if(anio%400 != 0 && anio%100 == 0) {
    esBisiesto = false;
  } else if(anio%400 == 0) {
    esBisiesto = true;
  }

  if(esBisiesto == true) {
    print("El año: $anio es bisiesto");
  } else {
    print("El año: $anio no es bisiesto");
  }
}

class Tarea {
  String titulo = '';
  String descripcion = '';
  int prioridad = 1; // 1-5
  bool completada = false;
  DateTime? fechaLimite;

  void setFechaLimite(String fecha) {
    List<String> partes = fecha.split('/');

    fechaLimite = DateTime(
      int.parse(partes[2]),
      int.parse(partes[1]),
      int.parse(partes[0])
    );
  }

  void getFechaLimite() {
    String fechaFormateada =
      '${fechaLimite!.day.toString().padLeft(2, '0')}/'
      '${fechaLimite!.month.toString().padLeft(2, '0')}/'
      '${fechaLimite!.year}';

    print(fechaFormateada);
  }
  
  void marcarCompletada() {
    completada = true;
    prioridad = 0;
    print('✅ Tarea "$titulo" marcada como completada');
  }
  
  void mostrarInfo() {
    String estado = completada ? '✅ Completada' : '⏳ Pendiente';
    String nivelPrioridad = (prioridad >= 4) ? '🔴 Alta' :
                            (prioridad >= 2) ? '🟡 Media' : '🟢 Baja';
    
    print('\n╔════════════════════════════════════════╗');
    print('  📌 $titulo');
    print('  📄 $descripcion');
    print('  🎯 Prioridad: $nivelPrioridad ($prioridad)');
    print('  📊 Estado: $estado');
    print('╚════════════════════════════════════════╝');
  }
}

void ejercicio3() {
  Tarea tarea1 = Tarea()
    ..titulo = 'Estudiar Dart'
    ..descripcion = 'Completar ejercicios del curso'
    ..prioridad = 5
    ..mostrarInfo();

  Tarea tarea2 = Tarea()
    ..titulo = 'Estudiar Flutter'
    ..descripcion = 'Completar ejercicios del curso'
    ..prioridad = 5
    ..mostrarInfo();

  Tarea tarea3 = Tarea()
    ..titulo = 'Estudiar C#'
    ..descripcion = 'Aprender por mi cuenta'
    ..prioridad = 2
    ..mostrarInfo();

  Tarea tarea4 = Tarea()
  ..titulo = "prueba de tarea"
  ..descripcion = "prueba de tarea"
  ..prioridad = 5
  ..mostrarInfo();

  List<Tarea> tareas = [];
  tareas.add(tarea1);
  tareas.add(tarea2);
  tareas.add(tarea3);
  tareas.add(tarea4);
  
  tareas[3].marcarCompletada();
  tareas[3].mostrarInfo();
  
  print("\nTareas incompletas:");
  for(Tarea tarea in tareas) {
    if(tarea.completada == false) {
      tarea.mostrarInfo();
    }
  }
  
}

class ConversorTemperatura {
  double celsius = 0.0;
  
  double aFahrenheit() => (celsius * 9/5) + 32;
  double aKelvin() => celsius + 273.15;
  
  void mostrarConversiones() {
    print('\n=== CONVERSIONES DE TEMPERATURA ===');
    print('${celsius.toStringAsFixed(2)} °C');
    print('${aFahrenheit().toStringAsFixed(2)} °F');
    print('${aKelvin().toStringAsFixed(2)} K');
  }
}

class ConversorDistancia {
  double kilometros = 0.0;
  
  double aMetros() => kilometros * 1000;
  double aMillas() => kilometros * 0.621371; 
  
  void mostrarConversiones() {
    print('\n=== CONVERSIONES DE DISTANCIA ===');
    print("${kilometros.toStringAsFixed(2)} km");
    print("${aMetros().toStringAsFixed(2)} m");
    print("${aMillas().toStringAsFixed(2)} km");
  }
}

class ConversorPeso {
  double kilogramos = 0.0;
  
  double aGramos() => kilogramos * 1000;
  double aLibras() => kilogramos * 2.20462;
  
  void mostrarConversiones() {
    print('\n=== CONVERSIONES DE PESO ===');
    print("${kilogramos.toStringAsFixed(2)} km");
    print("${aGramos().toStringAsFixed(2)} km");
    print("${aLibras().toStringAsFixed(2)} km");
  }
}

void ejercicio4() {
  print('=== CONVERSOR DE UNIDADES ===\n');
  print('1. Temperatura');
  print('2. Distancia');
  print('3. Peso');
  stdout.write('\nSelecciona una opción: ');
  String? opcion = stdin.readLineSync();

  if(opcion == null) {
    print('❌ Valor inválido');
    return;
  }
  
  stdout.write('Ingresa el valor: ');
  String? valorStr = stdin.readLineSync();
  double? valor = double.tryParse(valorStr ?? '0');
  
  if (valor == null) {
    print('❌ Valor inválido');
    return;
  }

  switch(opcion.toLowerCase()) {
    case "temperatura":
      ConversorTemperatura tempreatura = ConversorTemperatura()
      ..celsius = valor
      ..mostrarConversiones();
      break;
    case "distancia":
      ConversorDistancia distancia = ConversorDistancia()
      ..kilometros = valor
      ..mostrarConversiones();
      break;
    case "peso":
      ConversorPeso peso = ConversorPeso()
      ..kilogramos = valor
      ..mostrarConversiones();
      break;
    default:
      print("Opcion no valida");
      break;
  }
}

void ejercicio5() {
  print('=== ANALIZADOR DE CALIFICACIONES ===\n');
  
  List<double> notas = [];
  
  // Leer 5 calificaciones
  for (int i = 1; i <= 5; i++) {
    stdout.write('Ingresa la calificación $i (0-10): ');
    String? notaStr = stdin.readLineSync();
    double? nota = double.tryParse(notaStr ?? '0');
    
    if (nota == null || nota < 0 || nota > 10) {
      print('❌ Calificación inválida. Usa valores entre 0 y 10.');
      i--; // Repetir esta iteración
      continue;
    }
    
    notas.add(nota);
  }

  double promedio = 0;
  int sobresalientes = 0;
  int notables = 0;
  int aprobados = 0;
  int suspensos = 0;
  double notaMax = 0.0;
  double notaMin = 0.0;
  for(double nota in notas) {
    promedio += nota;
    if(nota > notaMax) {
      notaMax = nota;
    } else if(nota < notaMin) {
      notaMin = nota;
    }

    if(nota >= 9) {
      sobresalientes++;
    } else if(nota >= 7) {
      notables++;
    } else if(nota >= 5) {
      aprobados++;
    } else {
      suspensos++;
    }
  }
  promedio /= notas.length;

  print('\n╔════════════════════════════════════════╗');
  print('           REPORTE DE CALIFICACIONES     ');
  print('╚════════════════════════════════════════╝');
  print('Calificaciones: ${notas.join(', ')}');
  print('Promedio: ${promedio.toStringAsFixed(2)}');
  print("Nota maxima: $notaMax");
  print("Nota minima: $notaMin");
  print("Sobresalientes: $sobresalientes");
  print("Notables: $notables");
  print("Aprobados: $aprobados");
  print("Suspensos: $suspensos");
  String resultado = (promedio >= 5) ? '✅ APROBADO' : '❌ SUSPENSO';
  print("Resultado: $resultado");
}

void main() {
  ejercicio1();
  ejercicio2();
  ejercicio3();
  ejercicio4();
  ejercicio5();
}