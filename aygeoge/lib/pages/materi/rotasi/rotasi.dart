import 'package:aygeoge/pages/materi/materi.dart';
import 'package:aygeoge/pages/materi/rotasi/rotasi2.dart';
import 'package:aygeoge/pages/menu/view/menu.dart';
import 'package:flutter/material.dart';

class Rotasi extends StatelessWidget {
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
            title: Text('Rotasi'),
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
                        margin: const EdgeInsets.only(top: 0.0, left: 10.0),
                        child: Image(
                          image: AssetImage("assets/button/rotasi.png"),
                          width: 120,
                          height: 100,
                        ),
                      ),
                      Container(
                          margin: const EdgeInsets.only(top: 20.0, left: 0.0),
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
                                        return MateriScreen();
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
                                        return Rotasi2();
                                      }));
                                    },
                                  )),
                            ],
                          )),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 0.0, left: 60.0),
                  child: Image(
                    image: AssetImage("assets/images/rotasi1.png"),
                    width: 350,
                    height: 300,
                  ),
                )
              ],
            ),
          )),
    );
  }
}
