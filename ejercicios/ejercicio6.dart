Function aumentar = (Map<String, dynamic> contador) {
  return () { 
    contador["n"] += 1;
    int suma = contador["n"];
    return suma;
  };
};

Function decremento = (Map<String, dynamic> contador) {
  return () { 
    contador["n"] -= 1;
    int resta = contador["n"];
    return resta;
  };
};

Function obtenerValor = (Map<String, dynamic> contador) {
  return () { 
    return contador["n"];
  };
};

Function reiniciar = (Map<String, dynamic> contador) {
  return () { 
    contador["n"] = 0;
    return contador["n"];
  };
};

Function sumar = (Map<String, dynamic> contador) {
  return (int n) { 
    contador["n"] += n;
    var suma = contador["n"];
    return suma;
  };
};

Map<String, dynamic> crearContador () {
  Map<String, dynamic> contador = {};
  contador["n"] = 0;
  contador["aumentar"] = aumentar(contador);
  contador["decremento"] = decremento(contador);
  contador["obtenerValor"] = obtenerValor(contador);
  contador["reiniciar"] = reiniciar(contador);
  contador["sumar"] = sumar(contador);
  return contador;
}

void ejercicio1() {
  var map = crearContador();
  print(map["aumentar"]());
  print(map["aumentar"]());
  print(map["decremento"]());
  print(map["reiniciar"]());
  print(map["sumar"](5));
}

void main() {
  print("Ejercicio 1");
  ejercicio1();
}