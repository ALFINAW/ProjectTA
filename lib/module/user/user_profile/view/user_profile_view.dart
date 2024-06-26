import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class UserProfileView extends StatefulWidget {
  const UserProfileView({Key? key}) : super(key: key);

  Widget build(context, UserProfileController controller) {
    controller.view = this;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: const Text("Profile"),
        centerTitle: true,
        titleTextStyle: TextStyle(
            color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.bold),
        actions: const [],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        color: backgroundColor,
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.36,
              decoration: BoxDecoration(
                color: primaryColor,
              ),
              child: SafeArea(
                child: LayoutBuilder(
                  builder: (context, constraint) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: constraint.biggest.height * 0.3,
                          backgroundImage: NetworkImage(
                            "https://gcdnb.pbrd.co/images/M237lXQIoauo.png?o=1",
                          ),
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          "Rizal Mustofa Hasan",
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Text(
                          "rizalmus23@gmail.com",
                          style: TextStyle(fontSize: 16.0, color: Colors.white),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 8.0),
              padding: const EdgeInsets.all(12.0),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.transparent,
              ),
              child: Column(
                children: [
                  //list_tittle_row_icon
                  InkWell(
                    onTap: () => Get.to(UserDataAkunView()),
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 5.0),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(13.0),
                            topRight: Radius.circular(13.0)),
                      ),
                      child: const ListTile(
                        leading: Icon(Icons.account_box_rounded),
                        minLeadingWidth: 0.0,
                        title: Text("Data Akun"),
                        trailing: Icon(
                          Icons.chevron_right,
                          size: 24.0,
                        ),
                      ),
                    ),
                  ),

                  Container(
                    margin: const EdgeInsets.only(bottom: 5.0),
                    color: Colors.white,
                    child: const ListTile(
                      leading: Icon(Icons.settings),
                      minLeadingWidth: 0.0,
                      title: Text("Pengaturan"),
                      trailing: Icon(
                        Icons.chevron_right,
                        size: 24.0,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () => Get.to(UserProfileBantuanView()),
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 5.0),
                      color: Colors.white,
                      child: const ListTile(
                        leading: Icon(Icons.live_help),
                        minLeadingWidth: 0.0,
                        title: Text("Bantuan"),
                        trailing: Icon(
                          Icons.chevron_right,
                          size: 24.0,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () => Get.to(UserProfileKebijakanPrivasiView()),
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 5.0),
                      color: Colors.white,
                      child: const ListTile(
                        leading: Icon(Icons.privacy_tip),
                        minLeadingWidth: 0.0,
                        title: Text("Kebijakan Privasi"),
                        trailing: Icon(
                          Icons.chevron_right,
                          size: 24.0,
                        ),
                      ),
                    ),
                  ),

                  InkWell(
                    onTap: () => Get.to(UserProfileTentangAplikasiView()),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(13.0),
                            bottomRight: Radius.circular(13.0)),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x19000000),
                            blurRadius: 24,
                            offset: Offset(0, 11),
                          ),
                        ],
                      ),
                      child: const ListTile(
                        leading: Icon(Icons.info),
                        minLeadingWidth: 0.0,
                        title: Text("Tentang Aplikasi"),
                        trailing: Icon(
                          Icons.chevron_right,
                          size: 24.0,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  QOutlineButtonDark(
                    label: "Log Out",
                    onPressed: () => controller.logout(),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<UserProfileView> createState() => UserProfileController();
}
