void main(List<String> arg) {
  String anio = arg[0];
  int? anio1 = int.tryParse(anio);
  DateTime fecha = DateTime(anio1!);
  print(fecha);
}