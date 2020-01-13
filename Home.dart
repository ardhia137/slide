import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  static final List<String> imgSlider = [
    'gambar1.jpg',
    'gambar2.jpg',
    'gambar3.jpg',
  ];
  static final CarouselSlider autoPlayImage = CarouselSlider(
    items: imgSlider.map((fileImage) {
      return Container(
        margin: EdgeInsets.all(15.0),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          child: Image.asset(
            'images/${fileImage}',
            width: 10000,
            //height: 500,
            fit: BoxFit.cover,
          ),
        ),
      );
    }).toList(),
    height: 240,
    //autoPlayAnimationDuration: Duration(seconds: 10),
    autoPlay: true,
    enlargeCenterPage: true,
    aspectRatio: 2.0,
  );

  int _currentIndex = 0;
  final tabs = [
    ListView(
      children: <Widget>[
        Column(
          children: <Widget>[
            Stack(
              children: <Widget>[backgroundHeader(), test()],
            ),
            autoPlayImage
          ],
        ),
      ],
    ),
    Center(
      child: Text("homee"),
    ),
    Center(
      child: Text("homeee"),
    ),
  ];
  Widget Apake() {
    var a;
    if (_currentIndex == 0) {
      a = Text("Home");
      return a;
    }
    if (_currentIndex == 1) {
      a = Text("Massage");
      return a;
    }
    if (_currentIndex == 2) {
      a = Text("Account");
      return a;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBar(
          title: Apake(),
          // actions: <Widget>[
          //   IconButton(
          //     icon: Icon(Icons.notifications,size: 30,),
          //     onPressed: (){},
          //   )
          // ],
        ),
      ),
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("Home"),
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.message),
              title: Text("Pesan"),
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              title: Text("Akun"),
              backgroundColor: Colors.blue)
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}

Widget backgroundHeader() {
  return Container(
    height: 300,
    width: double.infinity,
    decoration: BoxDecoration(
      color: Colors.blue,
      // borderRadius: BorderRadius.only(
      //   bottomLeft: Radius.circular(30),
      //   bottomRight: Radius.circular(30),
      // ),
    ),
    child: Padding(
      padding: const EdgeInsets.only(top: 25, left: 10),
      child: ListTile(
        leading:Image.asset('images/user.png',width: 100,height: 70),
              title:Text(
                "Pukimen",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              subtitle:Text(
                "0895617738136",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
      ),
    ),
  );
}

Widget test() {
  return Positioned(
    top: 120,
    left: 10,
    right: 10,
    child: Container(
      width: 370,
      height: 230,
      decoration: BoxDecoration(
        color: Colors.white,
        //borderRadius: BorderRadius.circular(30),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 30.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Column(
              children: <Widget>[
                Text("Penghasilan"),
                Divider(),
                Text(
                  "Rp 500.000",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Text("Pengeluaran"),
                Divider(),
                Text(
                  "Rp 260.000",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
