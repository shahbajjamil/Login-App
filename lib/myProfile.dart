/**
 * Author: Shahbaj Jamil
 *profile: https://github.com/shahbajjamil
  */

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:cached_network_image/cached_network_image.dart';

class MyProfile extends StatelessWidget {
  Positioned myImage() {
    return Positioned(
      top: 5.0,
      left: 100,
      width: 160.0,
      height: 160.0,
      child: CachedNetworkImage(
        imageUrl:
            'https://scontent-iad3-1.cdninstagram.com/v/t51.2885-19/79588024_518288149038293_5085746495467028480_n.jpg?_nc_ht=scontent-iad3-1.cdninstagram.com&_nc_ohc=6Vl3OxhKVzIAX9QlGHq&oh=eca37e6d849b2bc062fdb044d0c35fef&oe=5E934E2B',
        imageBuilder: (context, imageProvider) => Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xffFBFBEF),
            image: DecorationImage(
              image: imageProvider,
            ),
          ),
        ),
        placeholder: (context, url) => CircularProgressIndicator(),
        errorWidget: (context, url, error) => Icon(
          Icons.error,
          color: Colors.red,
          size: 50,
        ),
        fit: BoxFit.cover,
      ),
      // ),
    );
  }

  _githubURL() async {
    const url = 'https://github.com/shahbajjamil';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _facebookURL() async {
    const url = 'https://www.facebook.com/shahbaj.jamil';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _twitterURL() async {
    const url = 'https://twitter.com/JamilShahbaj';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _instagranURL() async {
    const url = 'https://www.instagram.com/shahbaj_jamil';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Center profilePage() {
    return Center(
      child: Container(
        height: 400,
        width: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Card(
          elevation: 20,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 70.0),
                child: Text(
                  'MD Shahbaj Jamil',
                  style: TextStyle(
                      color: new Color(0xff662d8c),
                      fontWeight: FontWeight.bold,
                      fontSize: 24.0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Flutter Developer',
                  style: TextStyle(color: Colors.green, fontSize: 18.0),
                ),
              ),
              Divider(
                thickness: 1,
                endIndent: 20,
                indent: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Skills',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Color(0xffd8d8d8),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Flutter',
                          style: TextStyle(fontSize: 18.0),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Color(0xffd8d8d8),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'C',
                          style: TextStyle(fontSize: 18.0),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Color(0xffd8d8d8),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'C++',
                          style: TextStyle(fontSize: 18.0),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Color(0xffd8d8d8),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Dart',
                          style: TextStyle(fontSize: 18.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Divider(
                thickness: 1,
                endIndent: 20,
                indent: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Connect with me on',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    iconSize: 50.0,
                    icon: FaIcon(FontAwesomeIcons.twitter,
                        color: Color(0xff00acee)),
                    onPressed: _twitterURL,
                  ),
                  IconButton(
                    iconSize: 50.0,
                    icon: FaIcon(FontAwesomeIcons.instagram,
                        color: Color(0xffDF0174)),
                    onPressed: _instagranURL,
                  ),
                  IconButton(
                    iconSize: 50.0,
                    icon: FaIcon(FontAwesomeIcons.github),
                    onPressed: _githubURL,
                  ),
                  IconButton(
                    iconSize: 50.0,
                    icon: FaIcon(FontAwesomeIcons.facebook,
                        color: Color(0xff3b5998)),
                    onPressed: _facebookURL,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: Text('Developer'),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.green,
                Colors.yellow,
              ],
            ),
          ),
        ),
      ),
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          // color: Theme.of(context).primaryColor,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.green,
                Colors.yellow,
              ],
            ),
          ),
          child: Stack(
            children: <Widget>[
              profilePage(),
              myImage(),
            ],
          ),
        ),
      ),
    );
  }
}
