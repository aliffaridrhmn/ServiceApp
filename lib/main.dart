import 'dart:ui';
import 'package:bantuin_app/service_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BantuinApp());
}

class BantuinApp extends StatelessWidget {
  const BantuinApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Bantuin",
      home: MainApp(),
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 23, 31, 71),
      ),
    );
  }
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:
          BottomNavigationBar(backgroundColor: Colors.white, items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.handshake), label: "Service"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile')
      ]),
      body: SingleChildScrollView(
          child: SafeArea(
              child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(15),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Stack(
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: NetworkImage(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9us0MxB35Wv3z03TJFrxhub-WyxqpBKAsjQ&s"),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.red),
                      ),
                    ],
                  ),
                  Container(
                    child: Column(
                      children: [
                        Text(
                          "Current Location",
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        ),
                        Row(children: [
                          Text(
                            "Kota Pekanbaru",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                          Icon(
                            Icons.arrow_drop_down,
                            color: Colors.white,
                          )
                        ])
                      ],
                    ),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white, // Warna border putih
                        width: 2.0, // Ketebalan border
                      ),
                      borderRadius:
                          BorderRadius.circular(100), // Membuat lingkaran penuh
                    ),
                    child: Center(
                      child: Icon(
                        Icons.notifications,
                        size: 22,
                        color: const Color.fromARGB(
                            255, 220, 220, 220), // Warna ikon notifikasi
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsetsDirectional.only(top: 15),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.start, // Tambahkan ini
                        children: [
                          Text(
                            'Hi, Alif Farid Rahman',
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            'Selamat Datang di Bantuin',
                            style: const TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      )),
                  width: 1000,
                  height: 650,
                  child: Column(
                    children: <Widget>[
                      Padding(
                          padding: EdgeInsets.all(15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "My Services",
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.w500),
                              ),
                              Text("View All",
                                  style: TextStyle(
                                      color: const Color.fromARGB(
                                          255, 83, 178, 255)))
                            ],
                          )),
                      Padding(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            children: <Widget>[
                              Container(
                                height: 150,
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.zero,
                                      child: Stack(
                                        children: [
                                          ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              child: Image.network(
                                                'https://watermark.lovepik.com/photo/20211210/large/lovepik-male-woodmaker-image-picture_501785192.jpg',
                                                fit: BoxFit.cover,
                                              )),
                                          Positioned.fill(
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              child: BackdropFilter(
                                                filter: ImageFilter.blur(
                                                    sigmaX: 1, sigmaY: 1),
                                                child: Container(
                                                  color: Colors.black.withOpacity(
                                                      0.2), // Overlay transparan
                                                ),
                                              ),
                                            ),
                                          ),
                                          Positioned.fill(
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Padding(
                                                    padding: EdgeInsets.all(10),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          'Pak Suherman',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white),
                                                        ),
                                                        Text(
                                                          'Service Kursi Kayu',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 20,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500),
                                                        ),
                                                        Row(
                                                          children: [
                                                            Icon(
                                                              Icons.star,
                                                              color:
                                                                  Colors.yellow,
                                                              size: 18,
                                                            ),
                                                            Icon(
                                                              Icons.star,
                                                              color:
                                                                  Colors.yellow,
                                                              size: 18,
                                                            ),
                                                            Icon(
                                                              Icons.star,
                                                              color:
                                                                  Colors.yellow,
                                                              size: 18,
                                                            ),
                                                            Icon(
                                                              Icons.star,
                                                              color:
                                                                  Colors.yellow,
                                                              size: 18,
                                                            ),
                                                            Icon(
                                                              Icons.star,
                                                              color: const Color
                                                                  .fromARGB(255,
                                                                  81, 81, 81),
                                                              size: 18,
                                                            ),
                                                          ],
                                                        )
                                                      ],
                                                    ))
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.zero,
                                      child: Stack(
                                        children: [
                                          ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              child: Image.network(
                                                'https://www.pilihmana.com/wp-content/uploads/2023/07/gardener-tukang-kebun-wpv_720x720_center_center.jpeg',
                                                fit: BoxFit.cover,
                                              )),
                                          Positioned.fill(
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              child: BackdropFilter(
                                                filter: ImageFilter.blur(
                                                    sigmaX: 1, sigmaY: 1),
                                                child: Container(
                                                  color: Colors.black.withOpacity(
                                                      0.2), // Overlay transparan
                                                ),
                                              ),
                                            ),
                                          ),
                                          Positioned.fill(
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Padding(
                                                    padding: EdgeInsets.all(10),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          'Bu Tina',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white),
                                                        ),
                                                        Text(
                                                          'Tukang Kebun',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 20,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500),
                                                        ),
                                                        Row(
                                                          children: [
                                                            Icon(
                                                              Icons.star,
                                                              color:
                                                                  Colors.yellow,
                                                              size: 18,
                                                            ),
                                                            Icon(
                                                              Icons.star,
                                                              color:
                                                                  Colors.yellow,
                                                              size: 18,
                                                            ),
                                                            Icon(
                                                              Icons.star,
                                                              color:
                                                                  Colors.yellow,
                                                              size: 18,
                                                            ),
                                                            Icon(
                                                              Icons.star,
                                                              color:
                                                                  Colors.yellow,
                                                              size: 18,
                                                            ),
                                                            Icon(
                                                              Icons.star,
                                                              color:
                                                                  Colors.yellow,
                                                              size: 18,
                                                            ),
                                                          ],
                                                        )
                                                      ],
                                                    ))
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.zero,
                                      child: Stack(
                                        children: [
                                          ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              child: Image.network(
                                                'https://massage.co.id/wp-content/uploads/2023/05/pijat-online-terdekat.png',
                                                fit: BoxFit.cover,
                                              )),
                                          Positioned.fill(
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              child: BackdropFilter(
                                                filter: ImageFilter.blur(
                                                    sigmaX: 1, sigmaY: 1),
                                                child: Container(
                                                  color: Colors.black.withOpacity(
                                                      0.2), // Overlay transparan
                                                ),
                                              ),
                                            ),
                                          ),
                                          Positioned.fill(
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Padding(
                                                    padding: EdgeInsets.all(10),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          'Rahimah',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white),
                                                        ),
                                                        Text(
                                                          'Massage',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 20,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500),
                                                        ),
                                                        Row(
                                                          children: [
                                                            Icon(
                                                              Icons.star,
                                                              color:
                                                                  Colors.yellow,
                                                              size: 18,
                                                            ),
                                                            Icon(
                                                              Icons.star,
                                                              color:
                                                                  Colors.yellow,
                                                              size: 18,
                                                            ),
                                                            Icon(
                                                              Icons.star,
                                                              color:
                                                                  Colors.yellow,
                                                              size: 18,
                                                            ),
                                                            Icon(
                                                              Icons.star,
                                                              color:
                                                                  Colors.yellow,
                                                              size: 18,
                                                            ),
                                                            Icon(
                                                              Icons.star,
                                                              color: const Color
                                                                  .fromARGB(255,
                                                                  81, 81, 81),
                                                              size: 18,
                                                            ),
                                                          ],
                                                        )
                                                      ],
                                                    ))
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          )),
                      Padding(
                        padding: EdgeInsets.all(0),
                        child: Column(
                          children: <Widget>[
                            Container(
                                margin: EdgeInsets.zero,
                                height: 180,
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: <Widget>[
                                    Padding(
                                        padding: EdgeInsets.all(10),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: Colors.red,
                                              boxShadow: <BoxShadow>[
                                                BoxShadow(
                                                    color: Colors.black
                                                        .withOpacity(0.2),
                                                    offset: Offset(4, 1),
                                                    blurRadius: 8,
                                                    spreadRadius: 2)
                                              ]),
                                          width: 350,
                                          child: Padding(
                                              padding: EdgeInsets.all(15),
                                              child: Row(
                                                children: <Widget>[
                                                  Expanded(
                                                      child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        "#PromoToday",
                                                        style: TextStyle(
                                                            fontSize: 13,
                                                            color: const Color
                                                                .fromARGB(255,
                                                                255, 238, 0)),
                                                      ),
                                                      SizedBox(height: 5),
                                                      Text(
                                                        'Work with our best service provider',
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 18),
                                                      ),
                                                      SizedBox(height: 5),
                                                      ElevatedButton(
                                                        onPressed: () {
                                                          Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                  builder: (BuildContext
                                                                          contex) =>
                                                                      const ServiceScreen()));
                                                        },
                                                        child: Text(
                                                          'Order Now',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white),
                                                        ),
                                                        style: ElevatedButton
                                                            .styleFrom(
                                                                backgroundColor:
                                                                    Colors
                                                                        .black,
                                                                minimumSize:
                                                                    Size(100,
                                                                        30)),
                                                      )
                                                    ],
                                                  )),
                                                  Expanded(
                                                      child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    children: [
                                                      Image.asset(
                                                        'images/tukang.png',
                                                        scale: 5.0,
                                                      )
                                                    ],
                                                  ))
                                                ],
                                              )),
                                        )),
                                    Padding(
                                        padding: EdgeInsets.all(10),
                                        child: Container(
                                          margin: EdgeInsets.zero,
                                          child: Padding(
                                              padding: EdgeInsets.all(15),
                                              child: Row(
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.all(10),
                                                    child: Column(children: [
                                                      Text(
                                                        '#ComeOnGetCoupon',
                                                        style: TextStyle(
                                                            color: Colors.red),
                                                      ),
                                                      SizedBox(
                                                        height: 5,
                                                      ),
                                                      Text(
                                                        'Enjoy our service, with many Promo',
                                                        style: TextStyle(
                                                            fontSize: 18,
                                                            color: Colors.black,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
                                                      ),
                                                      SizedBox(
                                                        height: 10,
                                                      ),
                                                      ElevatedButton(
                                                        onPressed: () {},
                                                        style: ElevatedButton
                                                            .styleFrom(
                                                                backgroundColor:
                                                                    Colors
                                                                        .black),
                                                        child: Text(
                                                          "Get Now",
                                                          style: TextStyle(
                                                              color: const Color
                                                                  .fromARGB(
                                                                  255,
                                                                  255,
                                                                  255,
                                                                  255)),
                                                        ),
                                                      ),
                                                    ]),
                                                  )
                                                ],
                                              )),
                                          decoration: BoxDecoration(
                                            boxShadow: <BoxShadow>[
                                              BoxShadow(
                                                  color: Colors.black
                                                      .withOpacity(0.2),
                                                  offset: Offset(4, 1),
                                                  blurRadius: 8,
                                                  spreadRadius: 2)
                                            ],
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: const Color(0xFFFBD666),
                                          ),
                                          width: 350,
                                        )),
                                    Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Container(
                                          decoration: BoxDecoration(
                                            boxShadow: <BoxShadow>[
                                              BoxShadow(
                                                  color: Colors.black
                                                      .withOpacity(0.2),
                                                  offset: Offset(4, 1),
                                                  blurRadius: 8,
                                                  spreadRadius: 2)
                                            ],
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: const Color.fromARGB(
                                                255, 243, 194, 131),
                                          ),
                                          width: 350,
                                          child: Padding(
                                            padding: EdgeInsets.all(15),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Text(
                                                  '#CollectToYourCart',
                                                  style: TextStyle(
                                                      color:
                                                          const Color.fromARGB(
                                                              255, 127, 70, 6)),
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Text(
                                                  "Get Your Favourite Product to Cart",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                ElevatedButton(
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                            backgroundColor:
                                                                Colors.black),
                                                    onPressed: () {},
                                                    child: Text(
                                                      "Get To Cart",
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    ))
                                              ],
                                            ),
                                          )),
                                    )
                                  ],
                                )),
                          ],
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "New Request",
                                    style: TextStyle(
                                        color: const Color.fromARGB(
                                            255, 2, 19, 101),
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    'View All',
                                    style: TextStyle(
                                        color: const Color.fromARGB(
                                            255, 83, 178, 255)),
                                  )
                                ],
                              )
                            ],
                          )),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Service',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          const Color.fromARGB(255, 7, 67, 116),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5))),
                                ),
                                SizedBox(width: 10),
                                ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Project',
                                    style: TextStyle(
                                      color:
                                          const Color.fromARGB(255, 7, 67, 116),
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color.fromARGB(
                                          255, 236, 247, 255),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5))),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 75,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  Container(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.wifi,
                                          size: 35,
                                          color: const Color.fromARGB(
                                              255, 66, 74, 110),
                                        ),
                                        SizedBox(
                                          height: 2,
                                        ),
                                        Text(
                                          "Wi-Fi",
                                          style: TextStyle(
                                            color: const Color.fromARGB(
                                                255, 2, 19, 101),
                                          ),
                                        ),
                                      ],
                                    ),
                                    width: 100,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                        color: const Color.fromARGB(
                                            255, 2, 19, 101), // Warna border
                                        width: 0.5, // Ketebalan border
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.handyman,
                                          size: 35,
                                          color: const Color.fromARGB(
                                              255, 66, 74, 110),
                                        ),
                                        SizedBox(
                                          height: 2,
                                        ),
                                        Text(
                                          "Service",
                                          style: TextStyle(
                                            color: const Color.fromARGB(
                                                255, 66, 74, 110),
                                          ),
                                        ),
                                      ],
                                    ),
                                    width: 100,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                        color: const Color.fromARGB(
                                            255, 2, 19, 101), // Warna border
                                        width: 0.5, // Ketebalan border
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.heat_pump,
                                          size: 35,
                                          color: const Color.fromARGB(
                                              255, 66, 74, 110),
                                        ),
                                        SizedBox(
                                          height: 2,
                                        ),
                                        Text(
                                          "Service AC",
                                          style: TextStyle(
                                            color: const Color.fromARGB(
                                                255, 2, 19, 101),
                                          ),
                                        ),
                                      ],
                                    ),
                                    width: 100,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                        color: const Color.fromARGB(
                                            255, 2, 19, 101), // Warna border
                                        width: 0.5, // Ketebalan border
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.shower,
                                          size: 35,
                                          color: const Color.fromARGB(
                                              255, 66, 74, 110),
                                        ),
                                        SizedBox(
                                          height: 2,
                                        ),
                                        Text(
                                          "Bathup",
                                          style: TextStyle(
                                            color: const Color.fromARGB(
                                                255, 2, 19, 101),
                                          ),
                                        ),
                                      ],
                                    ),
                                    width: 100,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                        color: const Color.fromARGB(
                                            255, 2, 19, 101), // Warna border
                                        width: 0.5, // Ketebalan border
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ))),
    );
  }
}
