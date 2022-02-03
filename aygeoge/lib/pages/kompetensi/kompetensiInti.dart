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
            color: Colors.grey[400],
            child: Row(
              children: [
                Flexible(
                  flex: 1,
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        child: Image(
                          image: AssetImage("assets/button/inti.png"),
                          width: 120,
                          height: 100,
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Image(
                          image: AssetImage("assets/images/buku.png"),
                          width: 120,
                          height: 100,
                        ),
                      ),
                      Container(
                          alignment: Alignment.center,
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
                Flexible(
                    flex: 3,
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage("assets/images/materi2.png"),
                        fit: BoxFit.fill,
                      )),
                      child: Center(
                        child: Image(
                          image: AssetImage("assets/images/kompetensiinti.png"),
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
