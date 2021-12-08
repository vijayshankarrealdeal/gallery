import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gallery/routes/bio.dart';
import 'package:gallery/photologic.dart/fonts.dart';
import 'package:gallery/photologic.dart/photo.dart';
import 'package:gallery/routes/blog.dart';
import 'package:gallery/routes/contact.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

const _localhost = '0.0.0.0';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => PhotoController(),
        ),
        Provider(
          create: (context) => TypoGraphyOfApp(),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);
  void _launchURL(String url) async {
    if (!await launch(url)) throw 'Could not launch $url';
  }

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      backgroundColor: Colors.black,
      key: _scaffoldKey,
      endDrawer: Drawer(
        elevation: 0,
        child: Container(
          color: Colors.black,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back, color: Colors.white),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ),
                  ListTIlesCustom(
                    words: "Bio",
                    route: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Boi()),
                    ),
                  ),
                  ListTIlesCustom(
                    words: "Blog",
                    route: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Blog(),
                      ),
                    ),
                  ),
                  ListTIlesCustom(
                    words: "Contact",
                    route: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Contact(),
                      ),
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButtonFunction(
                        icons: FontAwesomeIcons.facebook,
                        callback: () => _launchURL('www.facebook.com'),
                      ),
                      IconButtonFunction(
                        icons: FontAwesomeIcons.twitter,
                        callback: () => _launchURL('www.twitter.com'),
                      ),
                      IconButtonFunction(
                        icons: FontAwesomeIcons.instagram,
                        callback: () => _launchURL(
                            'www.instagram.com/vijayshankarrealdeal'),
                      ),
                      IconButtonFunction(
                        icons: FontAwesomeIcons.youtube,
                        callback: () => _launchURL('www.youtube.com'),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        actions: [
          CupertinoButton(
            child: const Icon(
              CupertinoIcons.cube,
              color: Colors.white,
            ),
            onPressed: () => _scaffoldKey.currentState!.openEndDrawer(),
          )
        ],
        backgroundColor: Colors.black,
      ),
      body: Consumer<PhotoController>(
        builder: (context, urls, _) {
          return StaggeredGridView.countBuilder(
            crossAxisCount: 4,
            itemCount: urls.urls.length,
            itemBuilder: (BuildContext context, int index) => Image.network(
              urls.urls[index],
              fit: BoxFit.cover,
            ),
            staggeredTileBuilder: (int index) =>
                StaggeredTile.count(2, index.isEven ? 2 : 1),
            mainAxisSpacing: 4.0,
            crossAxisSpacing: 4.0,
          );
        },
      ),
    );
  }
}

class IconButtonFunction extends StatelessWidget {
  const IconButtonFunction({
    Key? key,
    required this.icons,
    required this.callback,
  }) : super(key: key);
  final IconData icons;
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => callback(),
      icon: FaIcon(
        icons,
        color: Colors.white,
        size: 15,
      ),
    );
  }
}

class ListTIlesCustom extends StatelessWidget {
  const ListTIlesCustom({
    Key? key,
    required this.words,
    required this.route,
  }) : super(key: key);

  final String words;
  final VoidCallback route;

  @override
  Widget build(BuildContext context) {
    final fonts = Provider.of<TypoGraphyOfApp>(context);

    return ListTile(
      trailing: fonts.body1(words.toString(), Colors.white),
      onTap: () => route(),
    );
  }
}
