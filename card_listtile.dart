import 'package:flutter/material.dart';

class CardListtileKullanimi extends StatelessWidget {
  const CardListtileKullanimi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Card ve liste')),
      body: Center(
        child: ListView(
          reverse: true,
          children: [
            Column(
              children: [
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
              ],
            ),
            Text('Selam'),
            ElevatedButton(onPressed: () {}, child: Text('Button')),
          ],
        ),
      ),
    );
  }

  SingleChildScrollView singleChildKullan() {
    return SingleChildScrollView(
      child: Column(
        children: [
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
        ],
      ),
    );
  }

  Column tekListeElemani() {
    return Column(
      children: [
        Card(
          color: Colors.yellow.shade300,
          shadowColor: Colors.red,
          elevation: 50,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          child: ListTile(
            leading: CircleAvatar(child: Icon(Icons.add)),
            title: Text('Başlık'),
            subtitle: Text('Alt başlık'),
            trailing: Icon(Icons.real_estate_agent),
          ),
        ),
        Divider(
          color: Colors.red,
          thickness: 5,
          height: 50,
          indent: 20,
          endIndent: 60,
        ),
      ],
    );
  }
}
