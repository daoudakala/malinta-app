import 'package:flutter/material.dart';
import 'package:malinta/screens/voyage_screen.dart';

class ContactCorrespondant extends StatefulWidget {
  const ContactCorrespondant({super.key});

  @override
  State<ContactCorrespondant> createState() => _ContactCorrespondantState();
}

class _ContactCorrespondantState extends State<ContactCorrespondant> {
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
        padding: EdgeInsets.all(12.0),
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            TextField(
              controller: _editingController,
              keyboardType: TextInputType.name,
              decoration: const InputDecoration(
                label: Text("Contact correspondant"),
                hintText: "(+225) 0101 0101 0101",
                prefixIcon: Icon(Icons.phone),
                border: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.black)),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            IconButton(
                onPressed: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => VoyageScreen(),
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
