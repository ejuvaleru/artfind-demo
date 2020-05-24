import 'package:flutter/material.dart';

// Pages
import 'package:artfind/src/pages/artist_page.dart';

// Widgets
import 'package:artfind/src/widgets/artist_card_widget.dart';
import 'package:artfind/src/widgets/custom_app_bar_widget.dart';

// Models
import 'package:artfind/src/models/artist_model.dart';

class DescubreMasPage extends StatelessWidget {
  // const DescubreMasPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 40),
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            decoration: BoxDecoration(
              border: Border.all(width: 1.0, color: Colors.white),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: <Widget>[
                Icon(Icons.search),
                SizedBox(
                  width: 10.0,
                ),
                Text('Buscar por ciudad'),
              ],
            ),
          ),

          SizedBox(
            height: 8.0,
          ),
          CustomAppBar(showBack: false,),

          SizedBox(
            height: 8.0,
          ),

          Text(
            'Descubre más',
            style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
          ),

          SizedBox(
            height: 20.0,
          ),

          // Artists card list

          Flexible(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: artists.length,
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              itemBuilder: (BuildContext context, i) {
                return GestureDetector(
                  onTap: () {
                    print('tapped ${artists[i].name}');
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ArtistPage(artists[i]),
                      ),
                    );
                  },
                  child: ArtistCard(artists[i]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
