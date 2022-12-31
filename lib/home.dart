import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _body(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Via Varejo',
          style: TextStyle(
            fontFamily: 'Poppins',
            color: Colors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
    );
  }

  _body() {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _labelText('SKU LOJISTA'),
          SizedBox(
            height: 10.0,
          ),
          TextFormField(
            cursorColor: Colors.black,
            decoration: const InputDecoration(
              filled: true,
              fillColor: Color(0xFFEDEAEA),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xFF6A5AFF), width: 1.5),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: TextButton(
              onPressed: () {},
              style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Color(0xFF6A5AFF))),
              child: const Text(
                'Buscar',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Colors.white,
                  fontSize: 16.0,
                ),
              ),
            ),
          ),
          SizedBox(height: 15,),
          _info(),
        ],
      ),
    );
  }

  _labelText(text) {
    return Text(
      text,
      style: const TextStyle(
          fontFamily: 'Poppins',
          color: Colors.grey,
          fontWeight: FontWeight.bold,
          fontSize: 16.0),
    );
  }

  _info() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _labelText('MARCA'),
        _cardInfo('Editora Panini'),
        _labelText('TÍTULO'),
        _cardInfo('Livro tal'),
        SizedBox(height: 15,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(child: _labelText('PESO')),
            SizedBox(width: 10,),
            Expanded(child: _labelText('ALTURA')),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: _containerInfo('1')
            ),
            SizedBox(width: 10,),
            Expanded(
              child: _containerInfo('1')
            ),
          ],
        ),
        SizedBox(height: 10,),
        Row(
          children: [
            Expanded(child: _labelText('LARGURA')),
            SizedBox(width: 10,),
            Expanded(child: _labelText('PROFUNDIDADE')),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: _containerInfo('1')
            ),
            SizedBox(width: 10,),
            Expanded(
              child: _containerInfo('1')
            ),
          ],
        ),
      ],
    );
  }

  _containerInfo(text) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFFEDEAEA),
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontFamily: 'Poppins',
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  _cardInfo(String text) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        elevation: 0,
        color: const Color(0xFFEDEAEA),
        shape: const OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFEDEAEA)),
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            overflow: TextOverflow.fade,
            text,
            style: const TextStyle(
              fontFamily: 'Poppins',
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
