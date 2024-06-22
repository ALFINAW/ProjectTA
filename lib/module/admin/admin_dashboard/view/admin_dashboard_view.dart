import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/module/__general/app_widget/berita_desa_terbaru_widget.dart';
import 'package:hyper_ui/module/__general/app_widget/produk_desa_terbaru_widget.dart';
import '../controller/admin_dashboard_controller.dart';
import '../../../__general/app_widget/pengaduan_terbaru_widget.dart';

class AdminDashboardView extends StatefulWidget {
  const AdminDashboardView({Key? key}) : super(key: key);

  Widget build(context, AdminDashboardController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            )),
        centerTitle: true,
        actions: const [],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: const Text("Admin"),
              accountEmail: const Text("adminsikedes@gmail.com"),
              currentAccountPicture: const CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://cdn-icons-png.flaticon.com/128/3237/3237472.png"),
              ),
              decoration: BoxDecoration(color: primaryColor),
              otherAccountsPictures: const [
                // CircleAvatar(
                //   backgroundColor: Colors.white,
                //   backgroundImage: NetworkImage(
                //       "https://randomuser.me/api/portraits/women/74.jpg"),
                // ),
                // CircleAvatar(
                //   backgroundColor: Colors.white,
                //   backgroundImage: NetworkImage(
                //       "https://randomuser.me/api/portraits/men/47.jpg"),
                // ),
              ],
            ),
            ListTile(
              leading: Image.network(
                "https://cdn-icons-png.flaticon.com/128/9431/9431944.png",
                height: 30,
                width: 30,
                fit: BoxFit.cover,
              ),
              title: const Text("Daftar Pengajuan",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  )),
              trailing: Icon(
                Icons.chevron_right,
                size: 24.0,
              ),
              onTap: () => Get.to(PengajuanListView()),
            ),
            ListTile(
              leading: Image.network(
                "https://cdn-icons-png.flaticon.com/128/1239/1239605.png",
                height: 30,
                width: 30,
                fit: BoxFit.cover,
              ),
              title: const Text("Daftar Pengaduan",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  )),
              trailing: Icon(
                Icons.chevron_right,
                size: 24.0,
              ),
              onTap: () => Get.to(PengaduanListView()),
            ),
            ListTile(
              leading: Image.network(
                "https://cdn-icons-png.flaticon.com/128/2910/2910769.png",
                height: 30,
                width: 30,
                fit: BoxFit.cover,
              ),
              title: const Text("Daftar Berita",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  )),
              trailing: Icon(
                Icons.chevron_right,
                size: 24.0,
              ),
              onTap: () => Get.to(BeritaListView()),
            ),
            ListTile(
              leading: Image.network(
                "https://cdn-icons-png.flaticon.com/128/5665/5665443.png",
                height: 30,
                width: 30,
                fit: BoxFit.cover,
              ),
              title: const Text("Daftar Produk",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  )),
              trailing: Icon(
                Icons.chevron_right,
                size: 24.0,
              ),
              onTap: () => Get.to(ProductListView()),
            ),
            ListTile(
              leading: Image.network(
                "https://cdn-icons-png.flaticon.com/128/9304/9304688.png",
                height: 30,
                width: 30,
                fit: BoxFit.cover,
              ),
              title: const Text("Data Warga",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  )),
              trailing: Icon(
                Icons.chevron_right,
                size: 24.0,
              ),
              onTap: () => Get.to(AdminDataWargaView()),
            ),
            ListTile(
              leading: Image.network(
                "https://cdn-icons-png.flaticon.com/128/182/182448.png",
                height: 30,
                width: 30,
                fit: BoxFit.cover,
              ),
              title: const Text("Logout",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  )),
              onTap: () => controller.logout(),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Container(
          color: backgroundColor,
          child: Column(
            children: [
              const SizedBox(height: 10.0),
              /*
                TODO: Implement this @ controller
                int currentIndex = 0;
                final CarouselController carouselController = CarouselController();
                */
              Builder(builder: (context) {
                List images = [
                  "https://images.unsplash.com/photo-1679648370654-2e5e1b4ebe2f?q=80&w=1471&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                  "https://plus.unsplash.com/premium_photo-1661963997035-971529a052cc?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8dmlsbGFnZSUyMG5hdHVyZXxlbnwwfHwwfHx8MA%3D%3D",
                  "https://images.unsplash.com/photo-1572908721147-0a9eb395762d?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fHZpbGxhZ2UlMjBuYXR1cmV8ZW58MHx8MHx8fDA%3D",
                  "https://images.unsplash.com/photo-1442544213729-6a15f1611937?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fHZpbGxhZ2V8ZW58MHx8MHx8fDA%3D",
                  "https://images.unsplash.com/photo-1626497862618-4aa68df390fd?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8aW5kb25lc2lhbiUyMGZvb2R8ZW58MHx8MHx8fDA%3D"
                ];

                return Column(
                  children: [
                    CarouselSlider(
                      carouselController: controller.carouselController,
                      options: CarouselOptions(
                        height: 190.0,
                        autoPlay: true,
                        enlargeCenterPage: false,
                        viewportFraction: 1.0,
                        onPageChanged: (index, reason) {
                          controller.currentIndex = index;
                          controller.setState(() {});
                        },
                      ),
                      items: images.map((imageUrl) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Container(
                              width: MediaQuery.of(context).size.width * 0.93,
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 5.0),
                              decoration: BoxDecoration(
                                color: Colors.amber,
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(6.0),
                                ),
                                image: DecorationImage(
                                  image: NetworkImage(
                                    imageUrl,
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            );
                          },
                        );
                      }).toList(),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: images.asMap().entries.map((entry) {
                        bool isSelected = controller.currentIndex == entry.key;
                        return GestureDetector(
                          onTap: () => controller.carouselController
                              .animateToPage(entry.key),
                          child: Container(
                            width: isSelected ? 40 : 6.0,
                            height: 6.0,
                            margin: const EdgeInsets.only(
                              right: 6.0,
                              top: 12.0,
                            ),
                            decoration: BoxDecoration(
                              color: isSelected
                                  ? primaryColor
                                  : primaryColor.withOpacity(0.6),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(12.0),
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                );
              }),
              const SizedBox(
                height: 15.0,
              ),
              BeritaDesaTerbaruWidget(),
              const SizedBox(
                height: 15.0,
              ),
              ProdukDesaTerbaruWidget(),
              const SizedBox(height: 15.0),
              PengaduanTerbaruWidget(),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<AdminDashboardView> createState() => AdminDashboardController();
}
