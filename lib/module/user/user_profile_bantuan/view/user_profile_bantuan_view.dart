import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/user_profile_bantuan_controller.dart';

class UserProfileBantuanView extends StatefulWidget {
  const UserProfileBantuanView({Key? key}) : super(key: key);

  Widget build(context, UserProfileBantuanController controller) {
    controller.view = this;
    return Scaffold(
        appBar: AppBar(
          title: const Text("Bantuan",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              )),
          centerTitle: true,
          actions: const [],
        ),
        body: Stack(
          children: [
            Container(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Text(
                    "Jika Anda memiliki pertanyaan atau membutuhkan bantuan, jangan ragu untuk menghubungi tim dan dukungan kami. Kami siap membantu Anda dengan segalah hal terkait aplikasi ini. Silahkan hubungi kami melalui:\n\n Telepon: 0889-0291-5754\n Email: support@sikedes.com\n Chat langsung dengan CS kami, klik ikon chat di pojok kanan bawah\n\nTim dukungan kami tersedia untuk membantu Anda Senin hingga Jum'at, pukul 09:00-17:00 waktu lokal. Kami berkomitmen untuk memberikan respon cepat dan solusi terbaik untuk Anda. Terima kasih telah menggunakan aplikasi kami!",
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 20.0,
              right: 20.0,
              child: CircleAvatar(
                backgroundColor: primaryColor,
                radius: 28.0,
                child: Icon(
                  Icons.headset_mic,
                  color: Colors.white,
                  size: 28.0,
                ),
              ),
            ),
          ],
        ));
  }

  @override
  State<UserProfileBantuanView> createState() => UserProfileBantuanController();
}
