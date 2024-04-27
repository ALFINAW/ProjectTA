import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/admin_list_aduan_controller.dart';

class AdminListAduanView extends StatefulWidget {
  const AdminListAduanView({Key? key}) : super(key: key);

  Widget build(context, AdminListAduanController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Daftar Aduan Warga",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            )),
        centerTitle: true,
        actions: const [],
      ),
      body: Container(
        padding: const EdgeInsets.all(13.0),
        color: backgroundColor,
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                physics: const ScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  List<Map<String, dynamic>> aduans = [
                    {
                      "nomor_laporan": "AW0001",
                      "judul": "Jalan Berlubang",
                      "tanggal": "25 Maret 2024, 16:59",
                      "alamat": "Jl. Rajawali RT/RW 04/05 Karangrena",
                      "deskripsi":
                          "Jalan berlubang ini sudah sangat parah dan mengganggu perjalanan warga yang melewati daerah tersebut, mohon segera diperbaiki.",
                      "image":
                          "https://images.unsplash.com/photo-1515162816999-a0c47dc192f7?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cG90aG9sZXN8ZW58MHx8MHx8fDA%3D"
                    },
                    {
                      "nomor_laporan": "AW0002",
                      "judul": "Pohon Tumbang",
                      "tanggal": "25 April 2024, 14:04",
                      "alamat": "Jl. Pramuka RT/RW 03/04 Karangrena",
                      "deskripsi":
                          "Ada pohon tumbang yang menutupi jalan pramuka",
                      "image":
                          "https://images.unsplash.com/photo-1620239864516-c7513ed7eab2?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8ZmFsbGVuJTIwdHJlZXxlbnwwfHwwfHx8MA%3D%3D"
                    },
                    {
                      "nomor_laporan": "AW0003",
                      "judul": "Sampah Laut",
                      "tanggal": "24 April 2024, 15:04",
                      "alamat": "Jl. Serayu RT/RW 02/03 Karangrena",
                      "deskripsi":
                          "Di laut sodong terdapat jumlah sampah yang tidak wajar, saya harap ini segera bisa dibersihkan ",
                      "image":
                          "https://images.unsplash.com/flagged/photo-1572213426852-0e4ed8f41ff6?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cnViYmlzaHxlbnwwfHwwfHx8MA%3D%3D"
                    },
                    {
                      "nomor_laporan": "AW0004",
                      "judul": "Jalan Berlubang",
                      "tanggal": "26 April 2024, 16:04",
                      "alamat": "Jl. Tegong RT/RW 05/06 Karangrena",
                      "deskripsi":
                          "Jalan berlubang yang mengakibatkan genangan air, hal ini dapat membahayakan pengguna jalan",
                      "image":
                          "https://images.unsplash.com/photo-1560782202-154b39d57ef2?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cG90aG9sZXN8ZW58MHx8MHx8fDA%3D"
                    },
                    {
                      "nomor_laporan": "AW0005",
                      "judul": "Sampah",
                      "tanggal": "23 April 2024, 10:04",
                      "alamat": "Jl. Niaga RT/RW 04/01 Karangrena",
                      "deskripsi":
                          "Truk pemungut sampah tidak mengambil sampah di rumah saya yang beralamat di jalan niaga rt/rw 01/04",
                      "image":
                          "https://images.unsplash.com/photo-1592890278983-18616401d4ed?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8cnViYmlzaHxlbnwwfHwwfHx8MA%3D%3D"
                    },
                  ];
                  var aduan = aduans[index];
                  return InkWell(
                    onTap: () => Get.to(UserDetailAduanView()),
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 13.0),
                      padding: const EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x19000000),
                            blurRadius: 24,
                            offset: Offset(0, 11),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      aduan['nomor_laporan'],
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      aduan['tanggal'],
                                      style: TextStyle(
                                        fontSize: 14.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.only(
                                    left: 17.0,
                                    right: 17.0,
                                    top: 3.0,
                                    bottom: 3.0),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1.3,
                                    color: Colors.red,
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(20.0),
                                  ),
                                ),
                                child: Text(
                                  "Lapor",
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 20.0),
                          Container(
                            height: 160.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(aduan['image']),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  8.0,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 15.0),
                          Text(
                            aduan['judul'],
                            style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 8.0),
                          Text(
                            aduan['alamat'],
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                          const SizedBox(height: 8.0),
                          Text(
                            aduan['deskripsi'],
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  State<AdminListAduanView> createState() => AdminListAduanController();
}
