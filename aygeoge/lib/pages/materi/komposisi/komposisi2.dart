import 'package:aygeoge/pages/materi/komposisi/komposisi.dart';
import 'package:aygeoge/pages/materi/materi.dart';
import 'package:aygeoge/pages/menu/view/menu.dart';
import 'package:flutter/material.dart';

class Komposisi2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text('Komposisi'),
            leading: IconButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return MenuScreen();
                }));
              },
              icon: Icon(Icons.home),
            ),
          ),
          body: Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage("assets/images/materi.png"),
              fit: BoxFit.fill,
            )),
            child: Row(
              children: [
                Container(
                    child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 0.0, left: 20.0),
                      child: Image(
                        image: AssetImage("assets/button/komposisi.png"),
                        width: 120,
                        height: 100,
                      ),
                    ),
                    Container(
                        margin: const EdgeInsets.only(top: 0.0, left: 10.0),
                        child: Row(
                          children: [
                            Container(
                                margin: const EdgeInsets.only(
                                    bottom: 10.0, left: 5.0),
                                child: ElevatedButton.icon(
                                  label: Text('Back',
                                      style: TextStyle(fontSize: 12)),
                                  icon: ImageIcon(
                                      AssetImage("assets/button/back.png"),
                                      size: 10),
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(builder: (context) {
                                      return Komposisi();
                                    }));
                                  },
                                )),
                          ],
                        )),
                    Container(
                      margin: const EdgeInsets.only(bottom: 10.0, left: 10.0),
                      child: FloatingActionButton.extended(
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return MateriScreen();
                          }));
                        },
                        label: Text('Kembali'),
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.grey[350],
                        focusColor: Colors.red,
                        hoverColor: Colors.white,
                        elevation: 6,
                        hoverElevation: 20,
                        splashColor: Colors.grey.shade800,
                        highlightElevation: 20,
                      ),
                    ),
                  ],
                )),
                Container(
                  margin: const EdgeInsets.only(top: 0.0, left: 95.0),
                  child: Image(
                    image: AssetImage("assets/images/komposisi2.png"),
                    width: 300,
                    height: 300,
                  ),
                )
              ],
            ),
          )),
    );
  }
}
