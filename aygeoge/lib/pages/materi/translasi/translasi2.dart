import 'package:aygeoge/pages/materi/materi.dart';
import 'package:aygeoge/pages/materi/translasi/geotranslasi.dart';
import 'package:aygeoge/pages/materi/translasi/translasi.dart';
import 'package:aygeoge/pages/materi/translasi/translasi3.dart';
import 'package:aygeoge/pages/menu/view/menu.dart';
import 'package:flutter/material.dart';

class Translasi2 extends StatelessWidget {
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
            title: Text('Translasi'),
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
                        image: AssetImage("assets/button/translasi.png"),
                        width: 120,
                        height: 100,
                      ),
                    ),
                    Container(
                        margin: const EdgeInsets.only(top: 0.0, left: 5.0),
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
                                      return Translasi();
                                    }));
                                  },
                                )),
                            Container(
                                margin: const EdgeInsets.only(
                                    bottom: 10.0, left: 5.0),
                                child: ElevatedButton.icon(
                                  icon: ImageIcon(
                                    AssetImage("assets/button/next.png"),
                                    size: 10,
                                  ),
                                  label: Text('Next',
                                      style: TextStyle(fontSize: 12)),
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(builder: (context) {
                                      return Translasi3();
                                    }));
                                  },
                                )),
                          ],
                        )),
                    Container(
                      margin: const EdgeInsets.only(bottom: 10.0),
                      child: SizedBox(
                        width: 150,
                        child: FloatingActionButton.extended(
                          onPressed: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return Geotranslasi();
                            }));
                          },
                          label: Text('Geogebra Translasi'),
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
                      margin: const EdgeInsets.only(bottom: 10.0),
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
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 10.0, left: 90.0),
                        child: Image(
                          image: AssetImage("assets/images/translasi2.png"),
                          width: 265,
                          height: 250,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
