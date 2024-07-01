import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class AdminDataWargaView extends StatefulWidget {
  const AdminDataWargaView({Key? key}) : super(key: key);

  Widget build(context, AdminDataWargaController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Data Warga",
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
        child: ListView.builder(
          itemCount: controller.dataWarga.length,
          physics: const ScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            var item = controller.dataWarga[index];
            return InkWell(
              // onTap: () => Get.to(Container()),
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
                    Text(
                      item["username"]!,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    Text(
                      item["nama lengkap"]!,
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            item["email"]!,
                            style: TextStyle(
                              fontSize: 14.0,
                            ),
                          ),
                        ),
                        const Icon(
                          Icons.more_horiz,
                          size: 24.0,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  @override
  State<AdminDataWargaView> createState() => AdminDataWargaController();
}
