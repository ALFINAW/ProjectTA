import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/user_aduan_controller.dart';

class UserAduanView extends StatefulWidget {
  const UserAduanView({Key? key}) : super(key: key);

  Widget build(context, UserAduanController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Daftar Aduan",
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
                itemCount: 1,
                physics: const ScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
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
                                      "#AW0001",
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "25 Maret 2024, 16:59",
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
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                  "https://images.unsplash.com/photo-1515162816999-a0c47dc192f7?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cG90aG9sZXN8ZW58MHx8MHx8fDA%3D",
                                ),
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
                            "Jalan Berlubang",
                            style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 8.0),
                          Text(
                            "Jl. Rajawali RT/RW 04/05 Karangrena",
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                          const SizedBox(height: 8.0),
                          Text(
                            "Jalan berlubang ini sudah sangat parah dan mengganggu perjalanan warga yang melewati daerah tersebut, mohon segera diperbaiki. ",
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
  State<UserAduanView> createState() => UserAduanController();
}
