import 'package:aygeoge/pages/materi/materi.dart';
import 'package:aygeoge/pages/materi/refleksi/georefleksi.dart';
import 'package:aygeoge/pages/materi/refleksi/refleksi.dart';
import 'package:aygeoge/pages/materi/refleksi/refleksi3.dart';
import 'package:aygeoge/pages/menu/view/menu.dart';
import 'package:flutter/material.dart';

class Refleksi2 extends StatelessWidget {
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
            title: Text('Refleksi'),
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
                          child: Image(
                            image: AssetImage("assets/button/refleksi.png"),
                            width: 120,
                            height: 100,
                          ),
                        ),
                        Container(
                            alignment: Alignment.center,
                            child: Row(
                              children: [
                                Flexible(flex: 1, child: Container()),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: ElevatedButton.icon(
                                      label: Text('Back',
                                          style: TextStyle(fontSize: 12)),
                                      icon: ImageIcon(
                                          AssetImage("assets/button/back.png"),
                                          size: 10),
                                      onPressed: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) {
                                          return Refleksi();
                                        }));
                                      },
                                    )),
                                Flexible(flex: 2, child: Container()),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: ElevatedButton.icon(
                                      icon: ImageIcon(
                                        AssetImage("assets/button/next.png"),
                                        size: 10,
                                      ),
                                      label: Text('Next',
                                          style: TextStyle(fontSize: 12)),
                                      onPressed: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) {
                                          return Refleksi3();
                                        }));
                                      },
                                    )),
                                Flexible(flex: 1, child: Container()),
                              ],
                            )),
                        Container(
                          alignment: Alignment.center,
                          child: SizedBox(
                            width: 150,
                            child: FloatingActionButton.extended(
                              onPressed: () {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (context) {
                                  return Georefleksi();
                                }));
                              },
                              label: Text('Geogebra Refleksi'),
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
                          alignment: Alignment.center,
                          margin: const EdgeInsets.only(top: 10.0),
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
                          image: AssetImage("assets/images/refleksi2.png"),
                          width: 330,
                        ),
                      ),
                    ))
              ],
            ),
          )),
    );
  }
}
