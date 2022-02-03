import 'package:aygeoge/pages/kompetensi/kompetensiInti.dart';
import 'package:aygeoge/pages/konsep/petaKonsep.dart';
import 'package:aygeoge/pages/latihan/latihan1.dart';
import 'package:aygeoge/pages/materi/materi.dart';
import 'package:aygeoge/pages/pengembang/pengembang.dart';
import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
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
            title: Text('Menu'),
          ),
          body: Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage("assets/images/menu.png"),
              fit: BoxFit.fill,
            )),
            child: Container(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 10.0),
                          child: SizedBox(
                            width: 85,
                            child: FloatingActionButton.extended(
                              onPressed: () {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (context) {
                                  return KompetensiInti();
                                }));
                              },
                              label: Text('Kompetensi',
                                  style: TextStyle(fontSize: 12)),
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
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 0.0),
                          child: SizedBox(
                            width: 85,
                            child: FloatingActionButton.extended(
                              onPressed: () {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (context) {
                                  return Konsep();
                                }));
                              },
                              label: Text('Peta Konsep',
                                  style: TextStyle(fontSize: 12)),
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
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 10.0),
                          child: SizedBox(
                            width: 85,
                            child: FloatingActionButton.extended(
                              onPressed: () {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (context) {
                                  return MateriScreen();
                                }));
                              },
                              label: Text('Materi',
                                  style: TextStyle(fontSize: 12)),
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
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: SizedBox(
                            width: 85,
                            child: FloatingActionButton.extended(
                              onPressed: () {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (context) {
                                  return Latihan();
                                }));
                              },
                              label: Text('Latihan',
                                  style: TextStyle(fontSize: 12)),
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
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 10.0),
                          child: SizedBox(
                            width: 85,
                            child: FloatingActionButton.extended(
                              onPressed: () {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (context) {
                                  return Pengembang();
                                }));
                              },
                              label: Text('Pengembang',
                                  style: TextStyle(fontSize: 12)),
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
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
