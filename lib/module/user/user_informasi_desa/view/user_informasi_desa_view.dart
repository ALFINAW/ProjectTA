import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/user_informasi_desa_controller.dart';

class UserInformasiDesaView extends StatefulWidget {
  const UserInformasiDesaView({Key? key}) : super(key: key);

  Widget build(context, UserInformasiDesaController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Informasi Desa",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              'DESA KARANGRENA',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20.0),
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color(0x19000000),
                    blurRadius: 24,
                    offset: Offset(0, 11),
                  ),
                ],
              ),
              child: Image.asset(
                "assets/icon/balai_desa.jpg",
                width: MediaQuery.of(context).size.width,
                height: 230.0,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 20.0),
            Text(
              'PROFIL',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10.0),
            Text(
              'Desa kami adalah Desa yang menjunjung tinggi kearifan lokal dalam bermasyarakat dan bernegara.',
              style: TextStyle(fontSize: 15),
            ),
            const SizedBox(height: 20.0),
            Text(
              'HUBUNGI KAMI',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10.0),
            Text(
              'Jl. Rajawali RT/RW 3/2, Karangrena, Kec. Maos, Kabupaten Cilacap, Jawa Tengah 53272\nTelpon : 0888-6839-006\nEmail : karangrena@gmail.com',
              style: TextStyle(fontSize: 15),
            ),
          ]),
        ),
      ),
    );
  }

  @override
  State<UserInformasiDesaView> createState() => UserInformasiDesaController();
}
