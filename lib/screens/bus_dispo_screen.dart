import 'package:flutter/material.dart';
import 'package:malinta/screens/detail_voyage_screen.dart';
import 'package:malinta/screens/voyage_screen.dart';

class BusDisponible extends StatefulWidget {
  const BusDisponible({super.key});

  @override
  State<BusDisponible> createState() => _BusDisponibleState();
}

class _BusDisponibleState extends State<BusDisponible> {
  final TextEditingController _editingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text("Malinta"),
        leading: IconButton(onPressed: () => {}, icon: const Icon(Icons.menu)),
        actions: [IconButton(onPressed: () => {}, icon: Icon(Icons.message))],
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(12.0),
        child: Column(
          children: [
            Text(
              "Bus disponible",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 15,
            ),
            TextField(
              controller: _editingController,
              keyboardType: TextInputType.name,
              decoration: const InputDecoration(
                hintText: "Car 1 : 14H00",
                suffixIcon: Icon(Icons.book),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(width: 2, color: Colors.black),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            TextField(
              controller: _editingController,
              keyboardType: TextInputType.name,
              decoration: const InputDecoration(
                hintText: "Car 1 : 14H00",
                suffixIcon: Icon(Icons.book),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(width: 2, color: Colors.black),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            TextField(
              controller: _editingController,
              keyboardType: TextInputType.name,
              decoration: const InputDecoration(
                hintText: "Car 1 : 14H00",
                suffixIcon: Icon(Icons.book),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(width: 2, color: Colors.black),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            TextField(
              controller: _editingController,
              keyboardType: TextInputType.name,
              decoration: const InputDecoration(
                hintText: "Car 1 : 14H00",
                suffixIcon: Icon(Icons.book),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(width: 2, color: Colors.black),
                ),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            const Divider(
              height: 1,
              thickness: 1,
              color: Colors.black,
              indent: 1,
              endIndent: 1,
            ),
            Image.asset(
              "assets/images/utb.jpeg",
              height: 100,
              width: 100,
            ),
            IconButton(
                onPressed: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailVoyage(),
                          )),
                    },
                icon: const Icon(
                  Icons.arrow_circle_left,
                  size: 30,
                  color: Colors.blue,
                )),
          ],
        ),
      ),
    );
  }
}
