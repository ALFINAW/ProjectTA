import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class PengajuanListView extends StatefulWidget {
  const PengajuanListView({Key? key}) : super(key: key);

  Widget build(context, PengajuanListController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Daftar Ajuan Surat"),
        actions: [],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () async {
          await Get.to(PengajuanFormOptionView());
        },
      ),
      body: Column(
        children: [
          Transform.scale(
            scaleX: 0.8,
            scaleY: 0.8,
            alignment: Alignment.centerLeft,
            child: QCategoryPicker(
              items: [
                {
                  "label": "All",
                  "value": "",
                },
                {
                  "label": "Pending",
                  "value": "Pending",
                },
                {
                  "label": "Approved",
                  "value": "Approved",
                },
                {
                  "label": "Rejected",
                  "value": "Rejected",
                },
              ],
              value: controller.filterStatus,
              validator: Validator.required,
              onChanged: (index, label, value, item) {
                controller.updateFilterStatus(value);
              },
            ),
          ),
          Expanded(
            child: Builder(builder: (context) {
              var query = FirebaseFirestore.instance
                  .collection("user_request")
                  .orderBy("created_at", descending: true);

              if (!isAdmin) {
                query = query.where("created_by", isEqualTo: currentUser!.uid);
              }

              return StreamBuilder<QuerySnapshot>(
                stream: query.snapshots(),
                builder: (context, snapshot) {
                  if (snapshot.hasError) return const Text("Error");
                  if (snapshot.data == null) return Container();
                  if (snapshot.data!.docs.isEmpty) {
                    return const Text("No Data");
                  }
                  final data = snapshot.data!;

                  return ListView.builder(
                    padding: const EdgeInsets.all(12.0),
                    itemCount: data.docs.length,
                    physics: const ScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      var item =
                          data.docs[index].data() as Map<String, dynamic>;
                      item["id"] = data.docs[index].id;

                      if (controller.filterStatus != "") {
                        if (item["status"] != controller.filterStatus)
                          return Container();
                      }

                      getColorByStatus(status) {
                        if (status == "Approved") return Colors.green;
                        if (status == "Rejected") return Colors.red;
                        return Colors.orange;
                      }

                      return InkWell(
                        child: Container(
                          margin: const EdgeInsets.only(bottom: 13.0),
                          padding: const EdgeInsets.all(20.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.0)),
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
                                "${item["jenis_surat"]}",
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 12.0),
                              Text(
                                "${item["nama"]}",
                                style: TextStyle(
                                  fontSize: 16.0,
                                ),
                              ),
                              const SizedBox(height: 12.0),
                              Text(
                                "${(item["created_at"].toDate() as DateTime).dMMMykkmmss}",
                                style: TextStyle(
                                  fontSize: 14.0,
                                ),
                              ),
                              const SizedBox(height: 12.0),
                              Text(
                                "${item["keterangan"] ?? "-"}",
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.orange,
                                ),
                              ),
                              const SizedBox(height: 12.0),
                              Text(
                                "${item["status"]}",
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.blue,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
              );
            }),
          ),
        ],
      ),
    );
  }

  @override
  State<PengajuanListView> createState() => PengajuanListController();
}
