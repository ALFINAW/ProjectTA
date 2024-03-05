import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/user_profile_tentang_aplikasi_controller.dart';

class UserProfileTentangAplikasiView extends StatefulWidget {
  const UserProfileTentangAplikasiView({Key? key}) : super(key: key);

  Widget build(context, UserProfileTentangAplikasiController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tentang Aplikasi",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            )),
        centerTitle: true,
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
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
                  "assets/icon/sikedes.png",
                  width: MediaQuery.of(context).size.width,
                  height: 230.0,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 20.0),
              Text(
                "Selamat datang di Aplikasi SIKEDES (Sistem Informasi Kependudukan Desa) Desa Karangrena, Maos, Cilacap. Aplikasi ini merupakan solusi terintegrasi untuk memudahkan interaksi antara warga dengan pemerintahan desa. Dengan fitur-fitur yang disediakan, kami bertujuan untuk mempercepat dan mempermudah proses administrasi serta memberikan informasi yang relevan kepada warga.\n Di dalam aplikasi ini, Anda akan menemukan beberapa menu utama yang memuat fitur-fitur berikut:",
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
              const SizedBox(height: 15.0),
              Text(
                "1. Ajuan Pembuatan Surat: Anda dapat mengajukan berbagai jenis surat administrasi seperti surat keterangan domisili, surat izin usaha, atau surat pengantar kegiatan melalui aplikasi ini. Prosesnya menjadi lebih cepat dan transparan.\n2. Berita Desa: Menu ini akan memberikan informasi terkini seputar kegiatan dan perkembangan terbaru di Desa Karangrena. Dapatkan kabar terbaru mengenai pembangunan, acara-acara desa, dan informasi penting lainnya.\n3. Produk Desa: Di sini Anda dapat mengetahui beragam produk unggulan yang dihasilkan oleh warga Desa Karangrena. Dukung produk lokal dengan membeli langsung melalui aplikasi ini.\n4. Pengaduan/Lapor: Bagian ini didedikasikan untuk warga yang ingin menyampaikan pengaduan atau laporan terkait kondisi desa, seperti jalan rusak, lampu penerangan yang mati, atau masalah-masalah lainnya. Pengaduan Anda akan segera ditindaklanjuti oleh pemerintahan desa.",
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
              const SizedBox(height: 15.0),
              Text(
                "Kami berkomitmen untuk menjaga keamanan dan privasi data Anda dalam menggunakan aplikasi ini. Segala informasi yang Anda berikan akan dijaga kerahasiaannya sesuai dengan kebijakan privasi yang berlaku.\nTerima kasih telah menjadi bagian dari komunitas SIKEDES Desa Karangrena, Maos, Cilacap. Ayo bersama-sama membangun desa yang lebih baik melalui teknologi!",
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
              const SizedBox(height: 15.0),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<UserProfileTentangAplikasiView> createState() =>
      UserProfileTentangAplikasiController();
}
