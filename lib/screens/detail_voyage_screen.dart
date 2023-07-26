import 'package:date_field/date_field.dart';
import 'package:flutter/material.dart';
import 'package:malinta/screens/bus_dispo_screen.dart';
import 'package:malinta/screens/contact_valide_screen.dart';
import 'package:malinta/screens/voyage_screen.dart';

class DetailVoyage extends StatefulWidget {
  const DetailVoyage({super.key});

  @override
  State<DetailVoyage> createState() => _DetailVoyageState();
}

class _DetailVoyageState extends State<DetailVoyage> {
  final TextEditingController _first_city = TextEditingController();
  final TextEditingController _second_city = TextEditingController();
  final TextEditingController _gare = TextEditingController();
  final TextEditingController _editingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text("Malinta"),
        leading: IconButton(
            onPressed: () => {Navigator.pop(context)},
            icon: const Icon(Icons.menu)),
        actions: [IconButton(onPressed: () => {}, icon: Icon(Icons.message))],
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            TextField(
              controller: _first_city,
              decoration: const InputDecoration(
                hintText: "Entrez ville 1 ",
                suffixIcon: Icon(Icons.location_city),
                border: OutlineInputBorder(
                    borderSide: BorderSide(
                  color: Colors.grey,
                )),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: _second_city,
              keyboardType: TextInputType.name,
              decoration: const InputDecoration(
                hintText: "Entrez ville 2 ",
                suffixIcon: Icon(Icons.location_city),
                border: OutlineInputBorder(
                    borderSide: BorderSide(
                  color: Colors.grey,
                )),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            DateTimeFormField(
              decoration: const InputDecoration(
                hintStyle: TextStyle(color: Colors.black45),
                hintText: 'Donnez une date',
                errorStyle: TextStyle(color: Colors.redAccent),
                border: OutlineInputBorder(),
                suffixIcon: Icon(Icons.event_note),
              ),
              firstDate: DateTime.now().add(const Duration(days: 10)),
              lastDate: DateTime.now().add(const Duration(days: 40)),
              initialDate: DateTime.now().add(const Duration(days: 20)),
              autovalidateMode: AutovalidateMode.always,
              validator: (DateTime? e) =>
                  (e?.day ?? 0) == 1 ? 'Please not the first day' : null,
              onDateSelected: (DateTime value) {
                print(value);
              },
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: _first_city,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                hintText: "03",
                suffixIcon: Icon(Icons.location_city),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: _editingController,
              keyboardType: TextInputType.name,
              decoration: const InputDecoration(
                hintText: "UTB",
                suffixIcon: Icon(Icons.home),
                border: OutlineInputBorder(
                    borderSide: BorderSide(
                  color: Colors.grey,
                )),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: ElevatedButton(
                onPressed: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BusDisponible()),
                  ),
                },
                style: ElevatedButton.styleFrom(
                    elevation: 4,
                    backgroundColor: Colors.orange,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0))),
                child: const Text(
                  "Je recherche",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            const Text(
              "Voyage : courrier",
              textAlign: TextAlign.start,
            ),
            IconButton(
                onPressed: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ContactCorrespondant(),
                          )),
                    },
                icon: const Icon(
                  Icons.arrow_circle_right,
                  size: 30,
                  color: Colors.blue,
                )),
          ],
        ),
      ),
    );
  }
}
