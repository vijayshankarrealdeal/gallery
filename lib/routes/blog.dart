import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:gallery/photologic.dart/fonts.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

String _temp = """
Contrary to popular belief, Lorem Ipsum is not simply random  English versions from the 1914 translation by H. Rackham.""";

class Blog extends StatelessWidget {
  const Blog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final fonts = Provider.of<TypoGraphyOfApp>(context);

    List<Widget> l = [
      MyListTile(fonts: fonts),
      MyListTile(fonts: fonts),
      MyListTile(fonts: fonts),
      MyListTile(fonts: fonts),
      MyListTile(fonts: fonts),
      MyListTile(fonts: fonts),
      MyListTile(fonts: fonts),
      MyListTile(fonts: fonts),
      MyListTile(fonts: fonts),
      MyListTile(fonts: fonts),
      MyListTile(fonts: fonts),
      MyListTile(fonts: fonts),
    ];

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        actions: [],
        backgroundColor: Colors.black,
      ),
      body: ListView(
        children: l,
      ),
    );
  }
}

class MyListTile extends StatelessWidget {
  const MyListTile({
    Key? key,
    required this.fonts,
  }) : super(key: key);

  final TypoGraphyOfApp fonts;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Expanded(
        flex: 1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              width: MediaQuery.of(context).size.height * 0.4,
              decoration: BoxDecoration(
                  color: Colors.blue.shade900,
                  borderRadius: BorderRadius.circular(15)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  fonts.heading4("My Art Journey", Colors.white),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.45,
                    child: AutoSizeText(
                      _temp,
                      style: GoogleFonts.sourceSansPro(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.5),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
