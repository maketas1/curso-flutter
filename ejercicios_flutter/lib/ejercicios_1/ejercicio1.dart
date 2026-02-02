import 'package:flutter/material.dart';

class ejercicio1 extends StatelessWidget {
  const ejercicio1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView( //Permite el escroleo
          children: [
            Column(
              children: [
                ejercicio1_1,
                ejercicio2,
                ejercicio3,
                ejercicio4,
                ejercicio5
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Text ejercicio1_1 = Text(
  "¡Bienvenido a Flutter!",
  style: TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 24,
    color: Colors.blue
  )
);

Container ejercicio2 = Container(
  height: 200,
  width: 200,
  color: Colors.red,
  child: Center(
    child: Text("Caja roja"),
  ),
);

Row ejercicio3 = Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Container(
      height: 80,
      width: 80,
      color: Colors.orange,
      child: Text("1"),
    ),
    Container(
      height: 80,
      width: 80,
      color: Colors.green,
      child: Text("2"),
    ),
    Container(
      height: 80,
      width: 80,
      color: Colors.blue,
      child: Text("3"),
    ),
  ],
);

Column ejercicio4 = Column(
  children: [
    Container(
      width: 60,
      height: 60,
      color: const Color.fromARGB(255, 213, 213, 213),
      child: Text("1"),
    ),
    Container(
      width: 60,
      height: 60,
      color: Colors.grey,
      child: Text(
        "2",
        style: TextStyle(
          color: Colors.white
        ),
      ),
    ),
    Container(
      width: 60,
      height: 60,
      color: const Color.fromARGB(255, 67, 67, 67),
      child: Text(
        "3",
        style: TextStyle(
          color: Colors.white
        ),
      ),
    ),
    Container(
      width: 60,
      height: 60,
      color: Colors.black,
      child: Text(
        "4",
        style: TextStyle(
          color: Colors.white
        ),
      ),
    ),
  ],
);

Container ejercicio5 = Container(
  height: 200,
  width: 200,
  color: Colors.red,
  padding: EdgeInsets.all(20),
  child: Container(
    padding: EdgeInsets.all(20),
    color: Colors.blue,
    child: Text("Padding 20"),
  ),
);

Container ejercicio6 = Container(
  height: 200,
  width: 100,
  color: Colors.green,
  decoration: BoxDecoration(
    border: BoxBorder.all(
      color: Colors.red,
      width: 5,
    ),
    borderRadius: BorderRadius.circular(20)
  ),
  child: Text("Esquinas Redondeadas"),
);