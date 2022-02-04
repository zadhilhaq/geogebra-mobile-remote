import 'package:aygeoge/pages/menu/view/menu.dart';
import 'package:flutter/material.dart';

class Pengembang extends StatelessWidget {
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
            title: Text('Pengembang'),
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
                          image: AssetImage("assets/button/profil.png"),
                          width: 120,
                          height: 100,
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Image(
                          image: AssetImage("assets/images/pasfoto.png"),
                          width: 120,
                          height: 150,
                        ),
                      ),
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
                          image: AssetImage("assets/images/pengembang.png"),
                          width: 280,
                        ),
                      ),
                    ))
              ],
            ),
          )),
    );
  }
}
