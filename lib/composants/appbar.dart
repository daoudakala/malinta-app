import 'package:flutter/material.dart';

AppBar buildAppBar() {
  return AppBar(
    backgroundColor: Colors.purple,
    title: const Text("Malinta"),
    leading: IconButton(onPressed: () => {}, icon: const Icon(Icons.menu)),
    actions: [IconButton(onPressed: () => {}, icon: Icon(Icons.message))],
    elevation: 0,
  );
}
