import 'package:flutter/material.dart';

class fragments_list extends StatefulWidget {
  final String web_pages;
  final String domains;

  const fragments_list(
      {required this.web_pages, required this.domains, super.key});

  @override
  State<fragments_list> createState() => _fragments_listState();
}

class _fragments_listState extends State<fragments_list> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Text(
              widget.web_pages.toString(),
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
            Text('Visit Pages:+${widget.domains}'),
          ],
        ),
      ),
    );
  }
}
