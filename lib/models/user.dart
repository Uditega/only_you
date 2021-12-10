import 'package:flutter/material.dart';

class User {

  @required late final String? name;
  @required late final String? description;
  @required late final num? age;
  @required late final String? country;
  @required late final String? imageUrl;

  User({ this.name, this.description, this.age, this.country, this.imageUrl});

}

final List<User> userPerson =[
  User(
    name: 'Robert Fox',
    age: 34,
    description: 'Love music, dancing and travelling, i enjoy minding '
        'my business and putting God first before all things',
    country: 'London',
    imageUrl: 'images/firstGuy.jpg',
  ),
  User(
    name: 'Leslie Alexander',
    age: 39,
    description: 'Enjoy singing and dancing, a helpless romantic, am a'
        ' Youtuber and I love adventure, new synergy and enjoy visiting museum',
    country: 'CoastRica',
    imageUrl: 'images/secondGuy.jpg',
  ),
  User(
    name: 'Jacob Jones',
    age: 35,
    description: 'Introvert that has high regard for family, works as a'
        ' bartender and derive great pleasure in solving problem and enjoys'
        ' making others smile',
    country: 'South Africa',
    imageUrl: 'images/thirdGuy.jpg',
  ),
  User(
    name: 'Cody Fisher',
    age: 30,
    description: 'I love girl that are classy and elegant, i need a'
        ' God fearing yet adventurous girl ',
    country: 'Spain',
    imageUrl: 'images/fourthGuy.jpg',
  ),
];
