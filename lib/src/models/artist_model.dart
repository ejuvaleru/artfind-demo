import 'package:artfind/src/models/painting_model.dart';

class Artist {
  String name;
  String profilePic;
  String typeOfArtist;
  String location;
  String bio;
  String cover;
  List<Painting> paintings = [];

  Artist(
      {this.name,
      this.bio,
      this.profilePic,
      this.typeOfArtist,
      this.location,
      this.cover,
      this.paintings});
}

List<Artist> artists = [
  new Artist(
      name: 'Lukas André',
      bio:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur euismod blandit nisi. Aliquam erat volutpat. In vel aliquet sem. Ut sed leo quis elit auctor suscipit eget eget urna. Praesent eget magna tincidunt, feugiat lorem in, eleifend ligula. Sed sed vestibulum velit. Vivamus bibendum non ex ut gravida. Praesent quis vehicula arcu, in ullamcorper nibh.',
      profilePic:
          'https://image.shutterstock.com/image-photo/portrait-smiling-red-haired-millennial-260nw-1194497251.jpg',
      typeOfArtist: 'digital',
      location: 'México',
      cover: 'assets/coverLuka.png',
      paintings: [
        new Painting(
            url:
                'https://i.pinimg.com/originals/fe/41/5f/fe415f65c3641c1a67b000aa7a4ddb36.jpg'),
        new Painting(
            url:
                'https://i.pinimg.com/originals/fe/41/5f/fe415f65c3641c1a67b000aa7a4ddb36.jpg'),
        new Painting(
            url:
                'https://i.pinimg.com/originals/fe/41/5f/fe415f65c3641c1a67b000aa7a4ddb36.jpg'),
        new Painting(
            url:
                'https://i.pinimg.com/originals/fe/41/5f/fe415f65c3641c1a67b000aa7a4ddb36.jpg'),
      ]),
  new Artist(
      name: 'Hector Pino',
      bio:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur euismod blandit nisi. Aliquam erat volutpat. In vel aliquet sem. Ut sed leo quis elit auctor suscipit eget eget urna. Praesent eget magna tincidunt, feugiat lorem in, eleifend ligula. Sed sed vestibulum velit. Vivamus bibendum non ex ut gravida. Praesent quis vehicula arcu, in ullamcorper nibh.',
      profilePic: 'https://randomuser.me/api/portraits/men/3.jpg',
      typeOfArtist: 'en artes plásticas',
      location: 'Acapulco',
      cover: 'assets/hectorCover.jpg',
     ),
  new Artist(
    name: 'Perla Rico',
    bio:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur euismod blandit nisi. Aliquam erat volutpat. In vel aliquet sem. Ut sed leo quis elit auctor suscipit eget eget urna. Praesent eget magna tincidunt, feugiat lorem in, eleifend ligula. Sed sed vestibulum velit. Vivamus bibendum non ex ut gravida. Praesent quis vehicula arcu, in ullamcorper nibh.',
    profilePic: 'https://randomuser.me/api/portraits/women/58.jpg',
    typeOfArtist: 'en arte abstacta',
    location: 'Guadalajara',
    cover: 'assets/perlaCover.jpg',
  ),
  new Artist(
    name: 'Miguel Pérez',
    bio:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur euismod blandit nisi. Aliquam erat volutpat. In vel aliquet sem. Ut sed leo quis elit auctor suscipit eget eget urna. Praesent eget magna tincidunt, feugiat lorem in, eleifend ligula. Sed sed vestibulum velit. Vivamus bibendum non ex ut gravida. Praesent quis vehicula arcu, in ullamcorper nibh.',
    profilePic: 'https://randomuser.me/api/portraits/women/58.jpg',
    typeOfArtist: 'en arte abstacta',
    location: 'Guadalajara',
    cover: 'assets/miguelCover.jpg',
  ),
  new Artist(
    name: 'Perla Rico',
    bio:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur euismod blandit nisi. Aliquam erat volutpat. In vel aliquet sem. Ut sed leo quis elit auctor suscipit eget eget urna. Praesent eget magna tincidunt, feugiat lorem in, eleifend ligula. Sed sed vestibulum velit. Vivamus bibendum non ex ut gravida. Praesent quis vehicula arcu, in ullamcorper nibh.',
    profilePic: 'https://randomuser.me/api/portraits/women/58.jpg',
    typeOfArtist: 'en arte abstacta',
    location: 'Guadalajara',
    cover: 'assets/coverLuka.png',
  ),
];
