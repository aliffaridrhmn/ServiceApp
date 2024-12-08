import 'package:flutter/material.dart';
import 'model/data_service.dart';
import 'detail_screen.dart';

class ServiceScreen extends StatelessWidget {
  const ServiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Service"),
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Expanded(
                    child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 237, 243, 246),
                            borderRadius: BorderRadius.circular(8)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                'Active',
                                style: TextStyle(color: Colors.deepOrange),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                            ),
                            Text(
                              'Job Offers',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: const Color.fromARGB(255, 26, 51, 72)),
                            ),
                            Text(
                              'Completed',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: const Color.fromARGB(255, 26, 51, 72)),
                            ),
                          ],
                        )))
              ],
            ),
          ),
          Expanded(
            // Menambahkan Expanded untuk membuat ListView bekerja
            child: Padding(
              padding: EdgeInsets.all(10),
              child: ListView.builder(
                itemCount: serviceDataList.length,
                itemBuilder: (context, index) {
                  final ServiceData service = serviceDataList[index];
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailScreen(service: service),
                        ),
                      );
                    },
                    child: Card(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(
                          color: const Color.fromARGB(255, 182, 180, 180),
                          width: 1.0,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.network(
                                    service.imageAsset,
                                    width: 100,
                                    height: 100,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(width: 20),
                                Expanded(
                                  // Menggunakan Expanded di Row
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        service.jasa,
                                        style: TextStyle(
                                          color: const Color.fromARGB(
                                              255, 4, 51, 90),
                                          fontSize: 22,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.date_range,
                                            color: const Color.fromARGB(
                                                255, 159, 159, 159),
                                            size: 18,
                                          ),
                                          SizedBox(width: 7),
                                          Text(service.openDays),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.lock_clock,
                                            color: const Color.fromARGB(
                                                255, 159, 159, 159),
                                            size: 18,
                                          ),
                                          SizedBox(width: 7),
                                          Text(service.openTimes),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Divider(
                              color: const Color.fromARGB(255, 182, 180, 180),
                              thickness: 1,
                              height: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.person,
                                      color: const Color.fromARGB(
                                          255, 159, 159, 159),
                                      size: 18,
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      service.nama,
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: const Color.fromARGB(
                                            255, 29, 39, 99),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.location_pin,
                                      color: const Color.fromARGB(
                                          255, 159, 159, 159),
                                      size: 18,
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      service.location,
                                      style: TextStyle(
                                        color: const Color.fromARGB(
                                            255, 56, 56, 56),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 18,
                                    ),
                                    SizedBox(width: 10),
                                    Text('Rate: ${service.rate}'),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: ElevatedButton.icon(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color.fromARGB(
                                          255, 126, 163, 255),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    icon: Icon(Icons.chat, color: Colors.white),
                                    label: Text(
                                      "Chat",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 20),
                                Expanded(
                                  child: ElevatedButton.icon(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color.fromARGB(
                                          255, 169, 242, 157),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    icon:
                                        Icon(Icons.phone, color: Colors.white),
                                    label: Text(
                                      "Call",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
