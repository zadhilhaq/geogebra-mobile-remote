import 'package:aygeoge/pages/materi/dilatasi/dilatasi.dart';
import 'package:aygeoge/pages/materi/komposisi/komposisi.dart';
import 'package:aygeoge/pages/materi/komposisi/komposisi2.dart';
import 'package:aygeoge/pages/materi/refleksi/refleksi.dart';
import 'package:aygeoge/pages/materi/rotasi/rotasi.dart';
import 'package:aygeoge/pages/materi/translasi/translasi.dart';
import 'package:aygeoge/pages/menu/view/menu.dart';
import 'package:flutter/material.dart';

class MateriScreen extends StatelessWidget {
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
            title: Text('Materi'),
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
            color: Colors.grey[300],
            child: Row(
              children: [
                Flexible(
                    flex: 2,
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          margin: const EdgeInsets.only(top: 10.0, bottom: 5),
                          child: SizedBox(
                            width: 100,
                            child: FloatingActionButton.extended(
                              onPressed: () {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (context) {
                                  return Translasi();
                                }));
                              },
                              label: Text('Translasi',
                                  style: TextStyle(fontSize: 12)),
                              foregroundColor: Colors.black,
                              backgroundColor: Colors.orange.shade400,
                              focusColor: Colors.red,
                              hoverColor: Colors.white,
                              elevation: 6,
                              hoverElevation: 20,
                              splashColor: Colors.grey.shade800,
                              highlightElevation: 20,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 5.0),
                          child: SizedBox(
                            width: 100,
                            child: FloatingActionButton.extended(
                              onPressed: () {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (context) {
                                  return Refleksi();
                                }));
                              },
                              label: Text('Refleksi',
                                  style: TextStyle(fontSize: 12)),
                              foregroundColor: Colors.black,
                              backgroundColor: Colors.orange.shade400,
                              focusColor: Colors.red,
                              hoverColor: Colors.white,
                              elevation: 6,
                              hoverElevation: 20,
                              splashColor: Colors.grey.shade800,
                              highlightElevation: 20,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 5.0),
                          child: SizedBox(
                            width: 100,
                            child: FloatingActionButton.extended(
                              onPressed: () {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (context) {
                                  return Rotasi();
                                }));
                              },
                              label: Text('Rotasi',
                                  style: TextStyle(fontSize: 12)),
                              foregroundColor: Colors.black,
                              backgroundColor: Colors.orange.shade400,
                              focusColor: Colors.red,
                              hoverColor: Colors.white,
                              elevation: 6,
                              hoverElevation: 20,
                              splashColor: Colors.grey.shade800,
                              highlightElevation: 20,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 5.0),
                          child: SizedBox(
                            width: 100,
                            child: FloatingActionButton.extended(
                              onPressed: () {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (context) {
                                  return Dilatasi();
                                }));
                              },
                              label: Text('Dilatasi',
                                  style: TextStyle(fontSize: 12)),
                              foregroundColor: Colors.black,
                              backgroundColor: Colors.orange.shade400,
                              focusColor: Colors.red,
                              hoverColor: Colors.white,
                              elevation: 6,
                              hoverElevation: 20,
                              splashColor: Colors.grey.shade800,
                              highlightElevation: 20,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 5.0),
                          child: SizedBox(
                            width: 100,
                            child: FloatingActionButton.extended(
                              onPressed: () {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (context) {
                                  return Komposisi();
                                }));
                              },
                              label: Text('Komposisi',
                                  style: TextStyle(fontSize: 12)),
                              foregroundColor: Colors.black,
                              backgroundColor: Colors.orange.shade400,
                              focusColor: Colors.red,
                              hoverColor: Colors.white,
                              elevation: 6,
                              hoverElevation: 20,
                              splashColor: Colors.grey.shade800,
                              highlightElevation: 20,
                            ),
                          ),
                        ),
                      ],
                    )),
                Flexible(
                    flex: 5,
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage("assets/images/materi2.png"),
                        fit: BoxFit.fill,
                      )),
                      child: Center(
                        child: Image(
                          image: AssetImage("assets/images/materitext.png"),
                          width: 300,
                        ),
                      ),
                    ))
              ],
            ),
          )),
    );
  }
}
