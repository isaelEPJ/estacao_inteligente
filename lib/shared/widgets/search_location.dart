import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchLocation extends StatelessWidget {
  const SearchLocation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Container(
      height: _size.height * .6,
      padding: const EdgeInsets.all(20),
      child: TextFormField(
        decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            suffixIcon: IconButton(
              icon: Icon(CupertinoIcons.search),
              onPressed: () {},
            ),
            label: Text('Selecione aqui seu endereço')),
      ),
    );
  }
}
