import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:malinta/screens/detail_voyage_screen.dart';

class AccueilScreen extends StatefulWidget {
  const AccueilScreen({super.key});

  @override
  State<AccueilScreen> createState() => _AccueilScreenState();
}

class _AccueilScreenState extends State<AccueilScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text("Malinta"),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.message)],
        elevation: 0,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 90,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: ListTile(
                leading: Image.asset(
                  "assets/icons/voiture.png",
                  height: 40,
                  width: 40,
                ),
                title: Text('Où allons-nous ? '),
                trailing: Icon(
                  Icons.arrow_forward,
                  color: Colors.black,
                ),
                onTap: () => {
                  setState(() => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const DetailVoyage()))
                      })
                },
              ),
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  border: Border.all(width: 1, color: Colors.grey)),
            ),
          ),
          const Divider(
            thickness: 1, // thickness of the line
            indent: 20, // empty space to the leading edge of divider.
            endIndent: 2, // empty space to the trailing edge of the divider.
            color: Colors.black, // The color to use when painting the line.
            height: 10, // The divider's height extent.
          ),
          SizedBox(
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              child: ListTile(
                leading: Image.asset(
                  "assets/icons/prime.png",
                  height: 40,
                  width: 40,
                ),
                title: Text('Bonus'),
                trailing: Icon(
                  Icons.arrow_forward,
                  color: Colors.black,
                ),
              ),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                border: Border.all(width: 1, color: Colors.grey),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 150,
              child: ListTile(
                leading: Image.asset(
                  "assets/icons/gare.png",
                  height: 40,
                  width: 40,
                ),
                title: Text(
                  'My gare',
                  textAlign: TextAlign.start,
                ),
                trailing: Icon(
                  Icons.arrow_forward_rounded,
                  color: Colors.black,
                ),
              ),
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  border: Border.all(width: 1, color: Colors.grey)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              child: ListTile(
                leading: Image.asset(
                  "assets/icons/archiver.png",
                  height: 40,
                  width: 40,
                ),
                title: Text('Historique'),
                trailing: Icon(
                  Icons.arrow_downward_rounded,
                  color: Colors.black,
                ),
              ),
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  border: Border.all(width: 1, color: Colors.grey)),
            ),
          ),
        ],
      ),
    );
  }
}
