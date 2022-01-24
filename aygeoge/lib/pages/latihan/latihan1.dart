import 'package:aygeoge/pages/latihan/latihan2.dart';
import 'package:aygeoge/pages/menu/view/menu.dart';
import 'package:flutter/material.dart';

class Latihan extends StatelessWidget {
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
            title: Text('Latihan'),
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
                        margin: const EdgeInsets.only(top: 0.0, left: 25.0),
                        child: Image(
                          image: AssetImage("assets/button/latihan.png"),
                          width: 120,
                          height: 100,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 20.0, left: 25.0),
                        child: Image(
                          image: AssetImage("assets/images/latihan.png"),
                          width: 120,
                          height: 100,
                        ),
                      ),
                      Container(
                          margin:
                              const EdgeInsets.only(bottom: 10.0, left: 25.0),
                          child: ElevatedButton.icon(
                            icon: ImageIcon(
                              AssetImage("assets/button/next.png"),
                              size: 10,
                            ),
                            label: Text('Next', style: TextStyle(fontSize: 12)),
                            onPressed: () {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (context) {
                                return Latihan2();
                              }));
                            },
                          )),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 0.0, left: 110.0),
                  child: Image(
                    image: AssetImage("assets/images/latihan1.png"),
                    width: 250,
                    height: 300,
                  ),
                )
              ],
            ),
          )),
    );
  }
}
