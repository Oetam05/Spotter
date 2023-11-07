import 'package:flutter/material.dart';
import 'package:spotter/ui/pages/event_info_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 77, 77, 160),
          title: const Center(
            child: Image(
              image: AssetImage('assets/logoG.png'),
              width: 100,
              height: 100,
            ),
          )),
      body: ListView(
        children: [
          GestureDetector(
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //       builder: (context) => EventInfoPage(index: 0)),
              // );
            },
            child: const EventItem(
                name: 'Concierto de Rock',
                distance: '3 km',
                image: 'assets/rock.jpeg',
                index: 0),
          ),
          GestureDetector(
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //       builder: (context) => EventInfoPage(index: 0)),
              // );
            },
            child: const EventItem(
                name: 'Concierto de Rock',
                distance: '3 km',
                image: 'assets/rock.jpeg',
                index: 1),
          ),
          GestureDetector(
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //       builder: (context) => EventInfoPage(index: 0)),
              // );
            },
            child: const EventItem(
                name: 'Concierto de Rock',
                distance: '3 km',
                image: 'assets/rock.jpeg',
                index: 2),
          ),
          GestureDetector(
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //       builder: (context) => EventInfoPage(index: 0)),
              // );
            },
            child: const EventItem(
                name: 'Concierto de Rock',
                distance: '3 km',
                image: 'assets/rock.jpeg',
                index: 3),
          ),
          GestureDetector(
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //       builder: (context) => EventInfoPage(index: 0)),
              // );
            },
            child: const EventItem(
                name: 'Concierto de Rock',
                distance: '3 km',
                image: 'assets/rock.jpeg',
                index: 4),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const EventInfoPage(
                          eventTitle: "Concierto de Rock",
                          eventDate: "12/11/2023",
                          eventDescription: "¡Prepárate para una explosión de energía musical! Únete a nosotros en una experiencia de rock inolvidable que te llevará a través de las icónicas melodías y el espíritu vibrante del género. ¡Descubre la potencia del rock en vivo y déjate llevar por la pasión de la música en este emocionante evento que no querrás perderte!",
                          eventImage:'assets/rock.jpeg' ,
                          eventLocation: "Centro de Convenciones de Barranquilla",
                          eventTime: "12:00PM",
                        )),
              );
            },
            child: const EventItem(
                name: 'Concierto de Rock',
                distance: '3 km',
                image: 'assets/rock.jpeg',
                index: 5),
          ),
        ],
      ),
    );
  }
}

class EventItem extends StatelessWidget {
  final String name;
  final String distance;
  final String image;
  final int index;

  const EventItem({
    super.key,
    required this.name,
    required this.distance,
    required this.image,
    required this.index,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: index % 2 == 0
            ? Colors.white
            : const Color.fromARGB(255, 77, 77, 160),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            // Imagen
            Image.asset(image, width: 100),

            const SizedBox(width: 16),

            // Nombre y distancia
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: index % 2 == 0
                            ? const Color.fromARGB(255, 40, 40, 128)
                            : Colors.white)),
                Text(distance,
                    style: TextStyle(
                        color: index % 2 == 0
                            ? const Color.fromARGB(255, 77, 77, 160)
                            : Colors.white))
              ],
            )
          ],
        ),
      ),
    );
  }
}
