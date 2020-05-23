import 'package:flutter/material.dart';

// Models
import 'package:artfind/src/models/artist_model.dart';

class ArtistCard extends StatelessWidget {
  final Artist artist;

  ArtistCard(this.artist);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      padding: EdgeInsets.only(left: 30.0, top: 6.0, bottom: 6.0, right: 5.0),
      height: 150,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.grey.shade800),
      child: Row(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(
              this.artist.cover,
              height: 150,
              width: 80,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 15.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 100,
                child: Text(
                  this.artist.name,
                  maxLines: 2,
                  style: TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                      height: 0.85),
                ),
              ),
              SizedBox(
                height: 3.0,
              ),
              Text(
                'Artista en ${this.artist.location}',
                style: TextStyle(fontSize: 10, color: Colors.yellow),
              ),
              SizedBox(
                height: 3.0,
              ),
              Container(
                width: 190,
                child: Text(
                  this.artist.bio,
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 10),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
