import 'package:aygeoge/pages/menu/view/menu.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ayu Mastura',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('BELAJAR GEOGEBRA'),
        ),
        body: Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage("assets/images/index.png"),
              fit: BoxFit.fill,
            )),
            child: Column(
              children: [
                Container(
                    alignment: Alignment.topRight,
                    margin: const EdgeInsets.only(top: 190.0, right: 80.0),
                    child: FloatingActionButton.extended(
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return MenuScreen();
                        }));
                      },
                      icon: Icon(Icons.play_arrow),
                      label: Text('Mulai'),
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.pink,
                      focusColor: Colors.red,
                      hoverColor: Colors.white,
                      elevation: 6,
                      hoverElevation: 20,
                      splashColor: Colors.blueGrey,
                      highlightElevation: 20,
                    )
                    // IconButton(
                    //   onPressed: () {
                    //   Navigator.of(context)
                    //       .push(MaterialPageRoute(builder: (context) {
                    //     return MenuScreen();
                    //   }));
                    // },
                    //   icon: Icon(
                    //     Icons.smart_display,
                    //     color: Colors.blue,
                    //     size: 90.0,
                    //     semanticLabel: 'Mulai',
                    //   ),
                    // ),
                    )
              ],
            )),
      ),
    );
  }
}
