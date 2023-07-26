import 'package:flutter/material.dart';
import 'package:malinta/screens/bus_dispo_screen.dart';
import 'package:malinta/screens/contact_valide_screen.dart';

enum SingingCharacter { Moi, Autres }

class VoyageScreen extends StatefulWidget {
  const VoyageScreen({super.key});

  @override
  State<VoyageScreen> createState() => _VoyageScreenState();
}

class _VoyageScreenState extends State<VoyageScreen> {
  SingingCharacter? _character = SingingCharacter.Moi;

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
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 30),
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Détail voyage'),
              ],
            ),
            const Divider(
              height: 1,
              thickness: 1,
              indent: 1,
              endIndent: 1,
              color: Colors.grey,
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "ABIDJAN - MAN ",
                  textAlign: TextAlign.start,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Car 2 départ  : 16H00 "),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Nbr Passagers  : 03 "),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                RichText(
                  text: const TextSpan(
                    style: TextStyle(color: Colors.black),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Montant : ',
                      ),
                      TextSpan(
                          text: ' 36.000 F CFA ',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("12000F / Personne"),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Pour qui payez-vous ? "),
              ],
            ),
            const Divider(
              height: 1,
              thickness: 1,
              indent: 1,
              endIndent: 1,
              color: Colors.grey,
            ),
            ListTile(
              title: const Text('Pour moi'),
              leading: Radio<SingingCharacter>(
                value: SingingCharacter.Moi,
                groupValue: _character,
                onChanged: (SingingCharacter? value) {
                  setState(() {
                    _character = value;
                  });
                },
              ),
            ),
            ListTile(
              title: const Text('Autres personnes'),
              leading: Radio<SingingCharacter>(
                value: SingingCharacter.Autres,
                groupValue: _character,
                onChanged: (SingingCharacter? value) {
                  setState(() {
                    _character = value;
                  });
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 250,
                  height: 40,
                  child: ElevatedButton(
                      onPressed: () => {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          shape: BeveledRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      child: Text(
                        "Je valide",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            const Divider(
              height: 1,
              thickness: 1,
              indent: 1,
              endIndent: 1,
              color: Colors.grey,
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
                            builder: (context) => BusDisponible(),
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
