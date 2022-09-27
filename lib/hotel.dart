import 'package:flutter/material.dart';

void main() {
  runApp(Meridian());
}

class Meridian extends StatefulWidget {
  @override
  State<Meridian> createState() => _MeridianState();
}

class _MeridianState extends State<Meridian> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.purple),
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: const Center(
              child: Text(
            'DETAIL',
            style: TextStyle(fontSize: 15),
          )),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          onTap: (index) => setState(() => _currentIndex = index),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.search_sharp),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_outlined),
              label: 'Favourites',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
        ),
        body: Column(
          children: [
            Stack(children: [
              const Image(
                  image: NetworkImage(
                      "https://images.trvl-media.com/hotels/6000000/5280000/5276000/5275933/972c1571.jpg")),
              Padding(
                padding: const EdgeInsets.only(left: 340, top: 205),
                child: IconButton(
                    icon: const Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.white,
                    ),
                    onPressed: () {}),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20, top: 140),
                child: Text("Crowne Plaza",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20, top: 170),
                child: Text(
                  "Kochi, Kerala",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 210),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20)),
                  child: const Text("8.4/85 reviews",
                      style: TextStyle(fontSize: 16, color: Colors.white)),
                ),
              )
            ]),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Row(
                          children: const [
                            Icon(Icons.star, color: Colors.purple),
                            Icon(Icons.star, color: Colors.purple),
                            Icon(Icons.star, color: Colors.purple),
                            Icon(Icons.star, color: Colors.purple),
                            Icon(Icons.star_border_outlined,
                                color: Colors.purple),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          children: const [
                            Text(
                              "\$200",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.purple),
                            ),
                            Text(
                              "/per night",
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.location_on,
                        size: 17,
                        color: Colors.grey,
                      ),
                      Text(
                        "8km to LuLu Mall",
                        style: TextStyle(fontSize: 13, color: Colors.grey),
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: SizedBox(
                  width: 300,
                  height: 50,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: const StadiumBorder(), primary: Colors.purple),
                      onPressed: () {},
                      child: const Center(
                          child: Text(
                        "Book Now",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      )))),
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "DESCRIPTION",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Crowne Plaza Kochi, Kerala, is an ideal staying place for both the professional and leisure travelers from across the world. It is placed amidst exotic surroundings that comprised of alluring attractions of the city. The hotel is blessed with excellent accommodation arrangements in the presence of fully furnished rooms and suites. The staving facilities are majestically complimented by the traditional Indian hospitality at this five-star property. Moreover, the extensive premises of the hotel consist of excellent arrangements for business and personal events.',
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(height: 10),
                    Text("Crowne Plaza Kochi, Kerala")
                  ],
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
