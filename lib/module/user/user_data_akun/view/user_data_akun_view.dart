import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/user_data_akun_controller.dart';

class UserDataAkunView extends StatefulWidget {
  const UserDataAkunView({Key? key}) : super(key: key);

  Widget build(context, UserDataAkunController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Data Akun",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            )),
        centerTitle: true,
        actions: const [],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(20.0),
        color: backgroundColor,
        child: Column(
          children: [
            Stack(
              children: [
                CircleAvatar(
                  radius: 80.0,
                  backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1488161628813-04466f872be2?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D",
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 10.0,
                  child: CircleAvatar(
                    backgroundColor: primaryColor,
                    child: Icon(
                      Icons.edit,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30.0),
            Container(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20.0, top: 13.0, bottom: 13.0),
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.only(bottom: 5.0),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(13.0),
                      topRight: Radius.circular(13.0)),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Username",
                              style: TextStyle(
                                fontSize: 12.0,
                              ),
                            ),
                          ),
                          const SizedBox(height: 5.0),
                          Text(
                            "Alfin123",
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Icon(
                      Icons.edit,
                      size: 27.0,
                      color: primaryColor,
                    ),
                  ],
                )),
            Container(
              padding: const EdgeInsets.only(
                  left: 20.0, right: 13.0, top: 13.0, bottom: 13.0),
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(bottom: 5.0),
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Nama Lengkap",
                      style: TextStyle(
                        fontSize: 12.0,
                      ),
                    ),
                  ),
                  const SizedBox(height: 5.0),
                  Text(
                    "Alfin Andrias Wardoyo",
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                  left: 20.0, right: 13.0, top: 13.0, bottom: 13.0),
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(bottom: 5.0),
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "NIK",
                      style: TextStyle(
                        fontSize: 12.0,
                      ),
                    ),
                  ),
                  const SizedBox(height: 5.0),
                  Text(
                    "33010207010001",
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Container(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20.0, top: 13.0, bottom: 13.0),
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.only(bottom: 5.0),
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
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Email",
                            style: TextStyle(
                              fontSize: 12.0,
                            ),
                          ),
                          const SizedBox(height: 5.0),
                          Text(
                            "alfinandrias20@gmail.com",
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Icon(
                      Icons.edit,
                      size: 27.0,
                      color: primaryColor,
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }

  @override
  State<UserDataAkunView> createState() => UserDataAkunController();
}
