import 'package:flutter/material.dart';

// Models
import 'package:artfind/src/models/artist_model.dart';

import 'package:artfind/src/widgets/custom_app_bar_widget.dart';

class ArtistPage extends StatelessWidget {
  final Artist artist;
  ArtistPage(this.artist);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: SingleChildScrollView(
            padding: EdgeInsets.only(bottom: 30.0, top: 40.0),
            physics: BouncingScrollPhysics(),
            child: Column(
              children: <Widget>[
                Text(
                  'artfind',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
                ),
                CustomAppBar(
                  showBack: true,
                  showMenu: false,
                ),
                CircleAvatar(
                  radius: 40.0,
                  backgroundImage: NetworkImage(artist.profilePic),
                ),
                SizedBox(
                  height: 12.0,
                ),
                Text(
                  artist.name,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35.0),
                ),
                Text(
                  'Arista ${artist.typeOfArtist}',
                  style: TextStyle(color: Colors.yellow),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  artist.bio,
                  style: TextStyle(fontSize: 10),
                ),
                SizedBox(
                  height: 25.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Obras',
                      style: TextStyle(
                          fontSize: 30.0, fontWeight: FontWeight.bold),
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Text(
                        'contactar',
                        style: TextStyle(color: Colors.yellow),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.0,
                ),
                GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: artist.paintings.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 15.0,
                    crossAxisSpacing: 15.0,
                  ),
                  itemBuilder: (BuildContext context, i) {
                    print(artist.paintings.length);
                    return ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.network(
                          artist.paintings[i].url,
                          fit: BoxFit.cover,
                        ));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
