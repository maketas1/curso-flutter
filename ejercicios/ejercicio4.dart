void pintar(var producto, var cantidad) {
  print("Producto: ${producto.key}");
  print("Precio unitario: ${producto.value}");
  print("Subtotal ${producto.value * cantidad.value}");
  print("-------------------------------------------");
}

void ejericicio1() {
  Map<String, double> productos = {'Manzana': 1.5, 'Pan': 2.0, 'Leche': 3.5, 'Huevos': 4.0, 'Queso': 5.5};
  List<String> lista = ['Manzana', 'Pan', 'Manzana', 'Leche', 'Queso'];

  int manzanas = 0;
  int pan = 0;
  int leche = 0;
  int huevos = 0;
  int queso = 0;

  for(String articulo in lista) {
    switch(articulo.toLowerCase()) {
      case "manzana":
        manzanas++;
        break;
      case "pan":
        pan++;
        break;
      case "leche":
        leche++;
        break;
      case "huevos":
        huevos++;
        break;
      case "queso":
        queso++;
        break;
      default:
        print("Producto no disponible $articulo");
        break;
    }
  }
  print("🛒 CARRITO DE COMPRAS:");
  Map<String, int> cantidades = {'Manzana': manzanas, 'Pan': pan, 'Leche': leche, 'Huevos': huevos, 'Queso': queso};
  double total = 0;
  for(var producto in productos.entries) {
    for(var cantidad in cantidades.entries) {
      if(producto.key == cantidad.key && cantidad.value != 0) {
        total += (producto.value * cantidad.value);
        pintar(producto, cantidad);
      }
    }
  }

  double descuento = 0;
  var porcentajes = (10, 15, 20);
  print("💰 RESUMEN:");
  print("Total sin descuento: €$total");
  switch(total) {
    case double t when t >= 10:
      descuento = (total * porcentajes.$1)/100;
      print("Descuento aplicado: ${porcentajes.$1}% (-$descuento)");
      break;
    case double t when t >= 15:
      descuento = (total * porcentajes.$2)/100;
      print("Descuento aplicado: ${porcentajes.$2}% (-$descuento)");
      break;
    case double t when t >= 20:
      descuento = (total * porcentajes.$3)/100;
      print("Descuento aplicado: ${porcentajes.$3}% (-$descuento)");
      break;
  }
  print("-------------------------------------------");
  print("💵 TOTAL A PAGAR: €${total - descuento}");
}

void main() {
  ejericicio1();
}