import 'package:bantuin_app/model/data_service.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final ServiceData service;

  const DetailScreen({super.key, required this.service});

  // TODO: implement widget
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('Detail Layanan'),
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  width: 100,
                  height: 1000,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(
                              10), // Menambahkan borderRadius untuk clip
                          child: Container(
                            width: double
                                .infinity, // Agar container memenuhi lebar yang tersedia
                            child: Image.network(
                              service.imageAsset,
                              fit: BoxFit
                                  .cover, // Menyesuaikan gambar agar pas dengan container
                            ),
                          ),
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          child: Row(
                            children: [
                              Expanded(
                                  child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    service.jasa,
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 25,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.person,
                                        color: const Color.fromARGB(
                                            255, 108, 108, 108),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        service.nama,
                                        style: TextStyle(
                                            color: const Color.fromARGB(
                                                255, 49, 49, 49),
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.date_range,
                                        color: const Color.fromARGB(
                                            255, 108, 108, 108),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        service.openDays,
                                        style: TextStyle(
                                            color: const Color.fromARGB(
                                                255, 49, 49, 49),
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.location_pin,
                                          color: const Color.fromARGB(
                                              255, 108, 108, 108)),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        service.location,
                                        style: TextStyle(
                                            color: const Color.fromARGB(
                                                255, 49, 49, 49),
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.lock_clock,
                                          color: const Color.fromARGB(
                                              255, 108, 108, 108)),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        service.openTimes,
                                        style: TextStyle(
                                            color: const Color.fromARGB(
                                                255, 49, 49, 49),
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                        size: 20,
                                      ),
                                      SizedBox(width: 15),
                                      Text(
                                        '${service.rate}',
                                        style: TextStyle(
                                            color: const Color.fromARGB(
                                                255, 49, 49, 49),
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text("Pelayanan Terbaik")
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Deskripsi: ${service.description}',
                                    style: TextStyle(
                                        fontSize: 16,
                                        height:
                                            1.5), // Menambahkan jarak antar baris
                                    textAlign: TextAlign
                                        .justify, // Agar teks rata kanan-kiri
                                  ),
                                ],
                              ))
                            ],
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 5,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(255, 108, 198, 135),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment
                                    .center, // Center icon dan teks
                                children: [
                                  Icon(
                                    Icons.phone,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                  SizedBox(
                                      width: 8), // Jarak antara icon dan teks
                                  Text(
                                    'Hubungi',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 254, 200, 198),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment
                                  .center, // Menempatkan ikon di tengah
                              children: [
                                FavouriteButton(), // Ikon di dalam tombol
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

class FavouriteButton extends StatefulWidget {
  const FavouriteButton({super.key});

  @override
  _FavouriteButtonState createState() => _FavouriteButtonState();
}

class _FavouriteButtonState extends State<FavouriteButton> {
  bool isFavourite = false;

  @override
  Widget build(BuildContext context) {
    // Mengembalikan Icon sesuai status
    return GestureDetector(
      onTap: () {
        setState(() {
          isFavourite = !isFavourite; // Mengubah status isFavourite
        });
      },
      child: Icon(
        isFavourite ? Icons.favorite : Icons.favorite_border,
        color: isFavourite
            ? Colors.red
            : Colors.white, // Warna berubah saat favorit
      ),
    );
  }
}
