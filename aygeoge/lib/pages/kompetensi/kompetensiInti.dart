import 'package:aygeoge/pages/kompetensi/kompetensiDasar.dart';
import 'package:aygeoge/pages/menu/view/menu.dart';
import 'package:flutter/material.dart';

class KompetensiInti extends StatelessWidget {
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
            title: Text('Kompetensi Inti'),
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
                          image: AssetImage("assets/button/inti.png"),
                          width: 120,
                          height: 100,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 10.0, left: 20.0),
                        child: Image(
                          image: AssetImage("assets/images/buku.png"),
                          width: 120,
                          height: 100,
                        ),
                      ),
                      Container(
                          margin:
                              const EdgeInsets.only(bottom: 10.0, left: 10.0),
                          child: ElevatedButton.icon(
                            icon: ImageIcon(
                              AssetImage("assets/button/next.png"),
                              size: 20,
                            ),
                            label: Text('Next'),
                            onPressed: () {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (context) {
                                return KompetensiDasar();
                              }));
                            },
                          )),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10.0, left: 80.0),
                  child: Image(
                    image: AssetImage("assets/images/kompetensiinti.png"),
                    width: 320,
                    height: 350,
                  ),
                )
              ],
            ),
          )),
    );
  }
}