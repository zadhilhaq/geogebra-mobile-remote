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
                          image: AssetImage("assets/button/latihan.png"),
                          width: 120,
                          height: 100,
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Image(
                          image: AssetImage("assets/images/latihan.png"),
                          width: 120,
                          height: 100,
                        ),
                      ),
                      Container(
                          alignment: Alignment.center,
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
                          image: AssetImage("assets/images/latihan1.png"),
                          width: 250,
                        ),
                      ),
                    ))
              ],
            ),
          )),
    );
  }
}
