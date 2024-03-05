import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/user_profile_kebijakan_privasi_controller.dart';

class UserProfileKebijakanPrivasiView extends StatefulWidget {
  const UserProfileKebijakanPrivasiView({Key? key}) : super(key: key);

  Widget build(context, UserProfileKebijakanPrivasiController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kebijakan Privasi",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            )),
        centerTitle: true,
        actions: const [],
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(
              "Kami menghargai kepercayaan Anda dalam menggunakan aplikasi ini. Privasi dan keamanan data Anda adalah prioritas utama bagi kami. Segala informasi yang Anda berikan kepada kami akan kami lindungi dengan ketat dan tidak akan digunakan untuk tujuan yang tidak sesuai.\n\n Data pribadi Anda, seperti informasi akun, riwayat ajuan, dan detail kontak, akan disimpan dengan aman dan hanya digunakan untuk keperluan operasional aplikasi ini. Kami tidak akan menyebarkan atau menjual data Anda kepada pihak ketiga tanpa izin Anda.\n\n Jika Anda memiliki pertanyaan lebih lanjut tentang kebijakan privasi kami atau ingin menghapus informasi yang kami miliki, silahkan hubungi tim dukungan kami melalui menu Bantuan. Terima kasih telah mempercayakan privasi Anda kepada kami.",
              style: TextStyle(
                fontSize: 15.0,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<UserProfileKebijakanPrivasiView> createState() =>
      UserProfileKebijakanPrivasiController();
}
