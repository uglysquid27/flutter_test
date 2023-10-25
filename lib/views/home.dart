import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          alignment: Alignment.topLeft,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * .4,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                Colors.white.withOpacity(0.2),
                Colors.black.withOpacity(0)
              ])),
        ),
        SingleChildScrollView(
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 40,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: 
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Recently Played', style: Theme.of(context).textTheme.headline6),
                      Row(
                        children: [
                          Icon(Icons.history),
                          SizedBox(width: 16,),
                          Icon(Icons.settings)
                        ],
                      )
                    ],
                  ),
                ),
                SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.all(20),
                  child: Row(
                    children: [
                      AlbumCard(),
                      SizedBox(width: 15),
                      AlbumCard(),
                      SizedBox(width: 15),
                      AlbumCard(),
                      SizedBox(width: 15),
                      AlbumCard(),
                      SizedBox(width: 15),
                      AlbumCard(),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    ));
  }

  Column AlbumCard() {
    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          "asset/album1.jpeg",
                          width: 120,
                          height: 120,
                        ),
                        SizedBox(height: 10,),
                        Text("Best mode"),
                      ],
                    );
  }
}
