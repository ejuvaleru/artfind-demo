import 'package:artfind/src/pages/descubre_mas_page.dart';
import 'package:flutter/material.dart';

// Models
import 'package:artfind/src/models/artist_model.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                    Image.asset(
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
                              Colors.black.withOpacity(0.05),
                              Colors.black,
                            ],
                            stops: [0.0, 1.0],
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(top: 25.0),
                              child: Text('desliza para ver más'),
                            ),
                            SizedBox(
                              height: 300.0,
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
                                  SizedBox(
                                    height: 20.0,
                                  ),
                                  Text(
                                    artists[i].bio,
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      (i != 0)
                                          ? IconButton(
                                              onPressed: () {},
                                              icon: FaIcon(
                                                  FontAwesomeIcons.arrowLeft),
                                            )
                                          : Text(''),
                                      (i != artists.length - 1)
                                          ? IconButton(
                                              onPressed: () {},
                                              icon: FaIcon(
                                                  FontAwesomeIcons.arrowRight),
                                            )
                                          : Text(''),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text('ver más opciones'),
                                SizedBox(
                                  height: 10.0,
                                ),
                                FaIcon(FontAwesomeIcons.angleDown),
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
              SizedBox(
                height: 50.0,
              ),
              _MenuItemButton('Perfil'),
              _MenuItemButton('Inicio'),
              _MenuItemButton('Registrate'),
              _MenuItemButton('Contacto'),
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

class _MenuItemButton extends StatelessWidget {
  final String text;
  const _MenuItemButton(this.text);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      onTap: () {},
      child: Container(
        padding: EdgeInsets.only(top: 7.0, bottom: 7.0),
        decoration: BoxDecoration(border: Border.all(color: Colors.black)),
        child: Text(
          this.text,
          style: TextStyle(fontWeight: FontWeight.bold),
          textAlign: TextAlign.left,
        ),
      ),
    );
  }
}
