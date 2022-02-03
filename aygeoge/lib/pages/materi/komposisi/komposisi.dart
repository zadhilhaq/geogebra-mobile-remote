import 'package:aygeoge/pages/materi/komposisi/komposisi2.dart';
import 'package:aygeoge/pages/materi/materi.dart';
import 'package:aygeoge/pages/menu/view/menu.dart';
import 'package:flutter/material.dart';

class Komposisi extends StatelessWidget {
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
            color: Colors.grey,
            child: Row(
              children: [
                Flexible(
                  flex: 2,
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        child: Image(
                          image: AssetImage("assets/button/komposisi.png"),
                          width: 120,
                          height: 100,
                        ),
                      ),
                      Container(
                          alignment: Alignment.center,
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
                                      bottom: 10.0, left: 10.0),
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
                                        return Komposisi2();
                                      }));
                                    },
                                  )),
                            ],
                          )),
                    ],
                  ),
                ),
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
                          image: AssetImage("assets/images/komposisi1.png"),
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
