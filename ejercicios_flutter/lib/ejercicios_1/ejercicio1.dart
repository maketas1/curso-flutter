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
                SizedBox(
                  height: 20,
                ),
                ejercicio1_1,
                SizedBox(
                  height: 20,
                ),
                ejercicio2,
                SizedBox(
                  height: 20,
                ),
                ejercicio3,
                SizedBox(
                  height: 20,
                ),
                ejercicio4,
                SizedBox(
                  height: 20,
                ),
                ejercicio5,
                SizedBox(
                  height: 20,
                ),
                ejercicio6,
                SizedBox(
                  height: 20,
                ),
                ejercicio7,
                SizedBox(
                  height: 20,
                ),
                ejercicio8,
                SizedBox(
                  height: 20,
                ),
                ejercicio9,
                SizedBox(
                  height: 20,
                ),
                ejercicio10,
                SizedBox(
                  height: 20,
                ),
                ejercicio11,
                SizedBox(
                  height: 20,
                ),
                ejercicio12,
                SizedBox(
                  height: 20,
                ),
                ejercicio13,
                SizedBox(
                  height: 20,
                ),
                ejercicio14,
                SizedBox(
                  height: 20,
                ),
                ejercicio15,
                SizedBox(
                  height: 20,
                ),
                ejercicio16,
                SizedBox(
                  height: 20,
                ),
                ejercicio17,
                SizedBox(
                  height: 20,
                )
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
    SizedBox(width: 16),
    Container(
      height: 80,
      width: 80,
      color: Colors.green,
      child: Text("2"),
    ),
    SizedBox(width: 16),
    Container(
      height: 80,
      width: 80,
      color: Colors.blue,
      child: Text("3"),
    ),
    SizedBox(width: 16),
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
  height: 100,
  width: 200,
  decoration: BoxDecoration(
    color: Colors.green,
    border: BoxBorder.all(
      width: 5,
    ),
    borderRadius: BorderRadius.circular(20)
  ),
  child: Text("Esquinas Redondeadas"),
);

Container ejercicio7 = Container(
  height: 150,
  width: 150,
  decoration: BoxDecoration(
    // color: Color.fromARGB(255, 255, 255, 255),
    border: BoxBorder.all(
      color: Colors.blue,
      width: 3,
    ),
    borderRadius: BorderRadius.circular(10)
  ),
  child: Text("Borde azul"),
);

Container ejercicio8 = Container(
  height: 200,
  width: 200,
  decoration: BoxDecoration(
    color: Colors.orange,
    boxShadow: [
      BoxShadow(
        color: Colors.black, //color
        offset: Offset(4, 4), //tamaño
        blurRadius: 10, //Difuminado
      ),
    ]
  ),
);

Container ejercicio9 = Container(
  height: 70,
  width: 200,
  decoration: BoxDecoration(
    color: Colors.white,
    border: Border.all(
      color: const Color.fromARGB(255, 79, 79, 79),
      width: 4
    ),
    borderRadius: BorderRadius.circular(12),
    boxShadow: [
      BoxShadow(
        color: Colors.black,
        offset: Offset(4, 4),
        blurRadius: 10
      ),
    ]
  ),
  child: Column(
    children: [
      Text("Producto"),
      SizedBox(
        height: 10,
      ),
      Text('Precio €99')
    ],
  ),
);

Container ejercicio10 = Container(
  height: 250,
  width: 250,
  decoration: BoxDecoration(
    gradient: LinearGradient(
      colors: [Colors.blue, Colors.purple],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
    borderRadius: BorderRadius.circular(10)
  ),
  child: Center(
    child: Text("Gradiente"),
  ),
);

Container ejercicio11 = Container(
  height: 200,
  width: 300,
  color: Colors.grey,
  padding: EdgeInsets.all(20),
  child: Row(
    children: [
      Expanded(
        child: Align(
          alignment: Alignment.topLeft,
          child: Text("Alineado a la izquierda"),
        )
      ),
      Expanded(
        child: Align(
          alignment: Alignment.center,
          child: Text("Centrado"),
        )
      ),
      Expanded(
        child: Align(
          alignment: Alignment.bottomRight,
          child: Text("Alineado a la derecha"),
        )
      ),
    ],
  ),
);

Container ejercicio12 = Container(
  height: 100,
  width: 150,
  decoration: BoxDecoration(
    border: BoxBorder.all(
      color: Colors.black,
      width: 4
    )
  ),
  child: Text(
    "Hola, que tal estan los maquinas?",
    overflow: TextOverflow.ellipsis,
  ),
);

Column ejercicio13 = Column(
  children: [
    Text(
      "Texto 1",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20
      ),
    ),
    Text(
      "Texto 2",
      style: TextStyle(
        fontStyle: FontStyle.italic,
      ),
    ),
    Text(
      "Texto 3",
      style: TextStyle(
        color: Colors.red,
        decoration: TextDecoration.underline,
      ),
    ),
    Text(
      "Texto 4",
      style: TextStyle(
        decoration: TextDecoration.lineThrough,
      ),
    )
  ],
);

Container ejercicio14 = Container(
  width: 100,
  height: 40,
  decoration: BoxDecoration(
    color: Colors.red,
    borderRadius: BorderRadius.circular(20)
  ),
  child: Text(
    "NUEVO",
    style: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 20,
      color: Colors.white
    ),
    textAlign: TextAlign.center,
  ),
);

Column ejercicio15 = Column(
  children: List.generate(5, (index) {
    return Container(
      height: 100,
      width: 100,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: ejercicio15Color(index),
        border: Border.all(
          color: Colors.grey
        )
      ),
      child: Text("$index"),
    );
  }),
);

Color ejercicio15Color(int index) {
  if(index % 2 == 0) {
    return const Color.fromARGB(255, 192, 192, 192);
  } else {
    return Colors.white;
  }
}

Column ejercicio16 = Column(
  children: List.generate(3, (row) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(3, (col) {
        int index = row * 3 + col + 1;
        List<Color> colors = [Colors.red, Colors.green, Colors.blue, Colors.yellow, Colors.purple, Colors.orange, Colors.pink, Colors.teal, Colors.amber];
        return Container(
          width: 100,
          height: 100,
          color: colors[index - 1],
          margin: EdgeInsets.all(5),
          child: Center(child: Text('$index')),
        );
      }),
    );
  }),
);

Column ejercicio17 = Column(
  children: List.generate(8, (row) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(8, (col) {
        bool isBlack = (row + col) % 2 == 0;
        return Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            color: isBlack ? Colors.black : Colors.white,
            border: Border.all(color: Colors.grey),
          ),
        );
      }),
    );
  }),
);