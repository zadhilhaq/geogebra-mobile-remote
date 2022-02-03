import 'package:aygeoge/pages/materi/materi.dart';
import 'package:aygeoge/pages/materi/translasi/translasi2.dart';
import 'package:aygeoge/pages/menu/view/menu.dart';
import 'package:flutter/material.dart';

class Translasi3 extends StatelessWidget {
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
            color: Colors.grey[300],
            child: Row(
              children: [
                Container(
                    child: Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: Image(
                        image: AssetImage("assets/button/translasi.png"),
                        width: 120,
                        height: 100,
                      ),
                    ),
                    Container(
                        alignment: Alignment.center,
                        child: ElevatedButton.icon(
                          label: Text('Back', style: TextStyle(fontSize: 12)),
                          icon: ImageIcon(AssetImage("assets/button/back.png"),
                              size: 10),
                          onPressed: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return Translasi2();
                            }));
                          },
                        )),
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
                          image: AssetImage("assets/images/translasi3.png"),
                          width: 270,
                        ),
                      ),
                    ))
              ],
            ),
          )),
    );
  }
}
