import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/news_detail_controller.dart';

class NewsDetailView extends StatefulWidget {
  const NewsDetailView({Key? key}) : super(key: key);

  Widget build(context, NewsDetailController controller) {
    controller.view = this;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 350.0,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://gcdnb.pbrd.co/images/GMf7NTbEjfuL.jpg?o=1",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  //circle_icon
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 16.0, left: 10.0),
                      child: InkWell(
                        onTap: () => Get.back(),
                        child: CircleAvatar(
                          backgroundColor: Colors.grey[300],
                          child: Icon(
                            Icons.arrow_back,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                      margin: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "KARNAVAL TINGKAT DESA KARANGRENA TAHUN 2023",
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "19 Agustus 2023",
                                style: TextStyle(
                                  fontSize: 15.0,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Icon(
                                    Icons.thumb_up,
                                    color: Colors.grey[800],
                                    size: 19.0,
                                  ),
                                  Text(
                                    "15",
                                    style: TextStyle(fontSize: 15.0),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Text(
                            "   Dalam rangka memeriahkan HUR Kemerdekaan RI Ke-78, Desa Karangrena mengadakan kegiatan lomba Karnaval yang dilaksanakan oleh Panitia HUT Kemerdekaan RI Ke78 Tahun 2023 tingkat Desa Karangrena. Kegiatan dilaksanakan setelah melaksanakan Upacara Pengibaran Bendera Merah Putih di tingkat Desa juga ditingkat Kecamatan Maos. Para peserta meliputi Instansi Sekolah dr PAUD, TK, SD, RT, RW, Kelompok-kelompok Tani dan Juga umum. Bagaimana aksinya,,... yo kita lihat videonya... pada link berikut ini: https://youtu.be/aOHuCVuJgzU \n \n Hari Ulang Tahun Republik Indonesia (HUT RI) atau Hari Kemerdekaan Republik Indonesia adalah hari besar nasional yang diperingati setiap tanggal 17 Agustus untuk memperingati momen bersejarah kemerdekaan Indonesia dari penjajahan Belanda pada tahun 1945. Beberapa poin penting terkait pengertian dan makna HUT RI: Momentum Proklamasi Kemerdekaan HUT RI menandai peristiwa Proklamasi Kemerdekaan Indonesia yang dibacakan oleh Ir. Soekarno pada tanggal 17 Agustus 1945 di Jalan Pegangsaan Timur 56, Jakarta. Perjuangan Merebut Kemerdekaan HUT RI merupakan puncak dari perjuangan panjang bangsa Indonesia untuk membebaskan diri dari belenggu penjajahan dan mewujudkan kedaulatan negara. Hari Bersejarah Tanggal 17 Agustus ditetapkan sebagai hari bersejarah bangsa Indonesia yang menandai lahirnya Negara Kesatuan Republik Indonesia. Peringatan Nasional HUT RI diperingati secara nasional di seluruh wilayah Indonesia dengan berbagai upacara dan kegiatan memperingati jasa para pahlawan yang memperjuangkan kemerdekaan. Semangat Kebangsaan Peringatan HUT RI menjadi momen untuk menghargai perjuangan para pahlawan, memperkuat semangat kebangsaan, dan memupuk rasa cinta tanah air di kalangan masyarakat Indonesia. Jadi, HUT RI merupakan hari yang sangat penting dan bermakna bagi bangsa Indonesia sebagai peringatan atas perjuangan dan pengorbanan untuk merebut kemerdekaan dari penjajahan serta kelahiran Negara Kesatuan Republik Indonesia.",
                            style: TextStyle(
                              fontSize: 15.0,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                        ],
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<NewsDetailView> createState() => NewsDetailController();
}
