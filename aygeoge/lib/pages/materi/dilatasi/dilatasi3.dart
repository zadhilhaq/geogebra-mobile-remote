import 'package:aygeoge/pages/materi/dilatasi/dilatasi2.dart';
import 'package:aygeoge/pages/materi/materi.dart';
import 'package:aygeoge/pages/menu/view/menu.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Dilatasi3 extends StatelessWidget {
  @override
  void _launchURL(String _url) async => await canLaunch(_url)
      ? await launch(_url)
      : throw 'Could not launch $_url';
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text('Dilatasi'),
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
                            image: AssetImage("assets/button/dilatasi.png"),
                            width: 120,
                            height: 100,
                          ),
                        ),
                        Container(
                            alignment: Alignment.center,
                            child: ElevatedButton.icon(
                              label:
                                  Text('Back', style: TextStyle(fontSize: 12)),
                              icon: ImageIcon(
                                  AssetImage("assets/button/back.png"),
                                  size: 10),
                              onPressed: () {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (context) {
                                  return Dilatasi2();
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
                        child: Column(
                          children: [
                            Center(
                              child: Image(
                                image:
                                    AssetImage("assets/images/dilatasi3.png"),
                                width: 300,
                              ),
                            ),
                            Center(
                              child: TextButton(
                                style: TextButton.styleFrom(
                                  padding: const EdgeInsets.only(
                                      left: 70, right: 50),
                                  primary: Colors.lightBlue,
                                  textStyle: const TextStyle(fontSize: 14),
                                ),
                                onPressed: () => _launchURL(
                                    'https://drive.google.com/file/d/1zLMMl1MBJa6hwhUYjYnGkzuWQDdph_Lq/view?usp=sharing'),
                                child: const Text(
                                    'https://drive.google.com/file/d/1zLMMl1MBJa6hwhUYjYnGkzuWQDdph_Lq/view?usp=sharing'),
                              ),
                            )
                          ],
                        )))
              ],
            ),
          )),
    );
  }
}
