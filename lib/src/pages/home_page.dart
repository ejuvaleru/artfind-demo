import 'package:artfind/src/pages/descubre_mas_page.dart';
import 'package:flutter/material.dart';

// Models
import 'package:artfind/src/models/artist_model.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: _MenuDrawer(),
      body: PageView.builder(
        itemCount: artists.length,
        itemBuilder: (BuildContext context, i) {
          return PageView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              Container(
                child: Stack(
                  children: <Widget>[
                    Image.network(
                      artists[i].cover,
                      height: double.maxFinite,
                      width: double.maxFinite,
                      fit: BoxFit.cover,
                    ),
                    SafeArea(
                      child: Container(
                        padding: EdgeInsets.only(left: 20.0),
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          gradient: LinearGradient(
                            begin: FractionalOffset.topCenter,
                            end: FractionalOffset.bottomCenter,
                            colors: [
                              Colors.grey.withOpacity(0.0),
                              Colors.black,
                            ],
                            stops: [0.0, 1.0],
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text('desliza para ver más'),
                            SizedBox(
                              height: 350.0,
                            ),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    width: 200,
                                    child: Text(
                                      artists[i].name,
                                      maxLines: 2,
                                      style: TextStyle(
                                          fontSize: 50,
                                          fontWeight: FontWeight.bold,
                                          height: 0.85),
                                    ),
                                  ),
                                  Text(
                                    'Artiste en ${artists[i].location}',
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.yellowAccent,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    artists[i].bio,
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: <Widget>[
                                      IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.arrow_right),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              children: <Widget>[
                                Text('ver más opciones'),
                                Icon(Icons.arrow_drop_down),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              DescubreMasPage(),
            ],
          );
        },
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}

class _MenuDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'artfind',
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
              ),
              Text('Perfil'),
              Text('Inicio'),
              Text('Registrarme'),
              Text('Contacto'),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.info),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.question_answer),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.share),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

