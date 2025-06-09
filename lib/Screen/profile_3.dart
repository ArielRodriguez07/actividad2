import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart'; // Aunque Widgets.dart se importa, no es estrictamente necesario si ya se importa material.dart

class Profile3 extends StatelessWidget {
  const Profile3({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Image.network(
            "https://raw.githubusercontent.com/ArielRodriguez07/images/refs/heads/main/hollowknight-1280-1529623462572_160w.jpg", // Reemplaza con la URL de tu imagen de fondo
            fit: BoxFit.cover,
            height: size.height,
            width: size.width,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 20),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Container(
                  // Establecer una altura máxima o permitir que se ajuste al contenido
                  // height: size.height * 0.4, // Se puede comentar si quieres que la altura se ajuste al contenido,
                                             // o asegurarte de que el contenido no exceda este porcentaje.
                                             // Para evitar el overflow, es mejor no fijar una altura si el contenido puede variar,
                                             // o usar un SingleChildScrollView dentro de este Container si el contenido es largo.
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 15),
                  child: SingleChildScrollView( // Añadir SingleChildScrollView para manejar el desbordamiento si el contenido es mucho
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start, // Cambiado a start para alinear el contenido de la columna a la izquierda
                      mainAxisSize: MainAxisSize.min, // La columna ocupará solo el espacio que necesiten sus hijos
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Stack(
                                    children: [
                                      const CircleAvatar(
                                        radius: 42,
                                        backgroundImage:
                                            NetworkImage("https://raw.githubusercontent.com/ArielRodriguez07/images/refs/heads/main/channels4_profile.jpg"), // Reemplaza con la URL de tu imagen de perfil
                                      ),
                                      Positioned(
                                        bottom: 0,
                                        right: 0,
                                        child: Container(
                                          height: 25,
                                          width: 25,
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color:
                                                Color.fromARGB(255, 95, 225, 99),
                                          ),
                                          child: const Icon(
                                            Icons.check,
                                            color: Colors.white,
                                            size: 20,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            border: Border.all(
                                                color: Colors.black54)),
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 9, horizontal: 12),
                                        child: const Text(
                                          "ADD FRIEND",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15),
                                        ),
                                      ),
                                      const SizedBox(width: 8),
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          color: Colors.pink,
                                        ),
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 8, horizontal: 12),
                                        child: const Text(
                                          "Follow",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                              color: Colors.white,
                                            ),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                "Winnie Vasquez",
                                style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 35,
                                ),
                              ),
                              const Text(
                                "Flutter Developer",
                                style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 16,
                                    color: Colors.black45),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Text(
                                "A Flutter developer is a software engineer who has proficiency with the Flutter framework to develop mobile, web, desktop, and embedded applications from a single codebase. They are skilled in Dart programming language and utilize Flutter's widgets, tools, and libraries to create visually appealing and highly performant user interfaces. Their responsibilities include designing, developing, testing, and deploying cross-platform applications.",
                                style: const TextStyle(
                                  fontSize: 16,
                                ),
                                maxLines: 4, // Limita el número de líneas
                                overflow: TextOverflow.ellipsis, // Añade puntos suspensivos si el texto se desborda
                              ),
                            ],
                          ),
                        ),
                        // Removí el Spacer y el Divider de aquí para que el SingleChildScrollView funcione correctamente
                        // Los moveremos fuera del SingleChildScrollView pero dentro del Column principal del Card
                        const SizedBox(height: 15), // Espacio antes de la línea divisoria
                        const Divider(
                          color: Colors.black12,
                        ),
                        SizedBox(
                          height: 65,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              friendAndMore("FRIENDS", "2318"),
                              friendAndMore("FOLLOWING", "364"),
                              friendAndMore("FOLLOWER", "175"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  SizedBox friendAndMore(title, number) {
    return SizedBox(
      width: 110,
      child: Column(
        children: [
          Text(
            title,
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
                color: Colors.black26),
          ),
          Text(
            number,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: Colors.black,
            ),
          )
        ],
      ),
    );
  }
}