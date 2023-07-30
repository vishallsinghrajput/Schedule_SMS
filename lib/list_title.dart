import 'package:flutter/material.dart';

class ListTitle extends StatefulWidget {
  const ListTitle({Key? key}) : super(key: key);

  @override
  State<ListTitle> createState() => _ListTitleState();
}

class _ListTitleState extends State<ListTitle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("visual singh"),
      ),
    );
  }
}
