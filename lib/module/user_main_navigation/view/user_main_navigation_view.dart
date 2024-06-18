import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/user_main_navigation_controller.dart';

class UserMainNavigationView extends StatefulWidget {
  const UserMainNavigationView({Key? key}) : super(key: key);

  Widget build(context, UserMainNavigationController controller) {
    controller.view = this;
    /*
    TODO: Implement this @ controller
    int selectedIndex = 0;
    updateIndex(int newIndex) {
    selectedIndex = newIndex;
    setState(() {});
    }
    */
    return DefaultTabController(
      length: 4,
      initialIndex: controller.selectedIndex,
      child: Scaffold(
        body: IndexedStack(
          index: controller.selectedIndex,
          children: [
            UserDashboardView(),
            UserPengajuanSuratListView(),
            UserAduanView(),
            UserProfileView()
          ],
        ),
        bottomNavigationBar: Container(
          height: 75,
          child: BottomNavigationBar(
            currentIndex: controller.selectedIndex,
            onTap: (newIndex) => controller.updateIndex(newIndex),
            type: BottomNavigationBarType.fixed,
            selectedItemColor: primaryColor, // Warna item yang dipilih
            unselectedItemColor: Color.fromARGB(
                255, 121, 109, 136), // Warna item yang tidak dipilih
            selectedFontSize: 15, // Ukuran font item yang dipilih
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_rounded,
                ),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.description,
                ),
                label: "Ajuan",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.feedback,
                ),
                label: "Aduan",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                ),
                label: "Profile",
              ),
            ],
            // Atur tema ikon ketika item dipilih
            selectedIconTheme: IconThemeData(
              size: 30, // Ukuran ikon yang dipilih
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<UserMainNavigationView> createState() => UserMainNavigationController();
}
