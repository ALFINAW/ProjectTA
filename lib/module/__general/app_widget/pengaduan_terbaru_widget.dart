import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class PengaduanTerbaruWidget extends StatelessWidget {
  const PengaduanTerbaruWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 24,
            offset: Offset(0, 11),
          ),
        ],
        border: Border.all(
          width: 1.0,
          color: Colors.grey[300]!,
        ),
      ),
      child: Column(
        children: [
          H4(
              title: 'Pengaduan',
              subtitle: 'Lihat semua',
              onPressed: () => Get.to(PengaduanListView())),
          const SizedBox(height: 5.0),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Pantau aduan warga",
                style: TextStyle(
                  fontSize: 15.0,
                ),
              )
            ],
          ),
          const SizedBox(height: 20.0),
          SizedBox(
            height: 300.0,
            child: StreamBuilder<QuerySnapshot>(
              stream: FirebaseFirestore.instance
                  .collection("aduan")
                  .limit(5)
                  .snapshots(),
              builder: (context, snapshot) {
                if (snapshot.hasError) return const Text("Error");
                if (snapshot.data == null) return Container();
                if (snapshot.data!.docs.isEmpty) {
                  return const Text("No Data");
                }
                final data = snapshot.data!;
                var items = data.docs;
                return ListView.builder(
                  itemCount: items.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.zero,
                  clipBehavior: Clip.none,
                  itemBuilder: (context, index) {
                    var item = items[index].data() as Map<String, dynamic>;
                    item["id"] = items[index].id;

                    return GestureDetector(
                      // onTap: () => Get.to(UserDetailAduanView()),
                      child: Container(
                        margin: const EdgeInsets.only(right: 25.0),
                        width: 230,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                Container(
                                  height: 190.0,
                                  width: 230.0,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(item["photo"]),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(
                                        10.0,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 0,
                                  right: 0,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        left: 17.0,
                                        right: 17.0,
                                        top: 5.0,
                                        bottom: 5.0),
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10.0),
                                      ),
                                    ),
                                    child: Text(
                                      "Lapor",
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 0,
                                  left: 0,
                                  right: 0,
                                  child: Container(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          item["title"],
                                          style: TextStyle(
                                            fontSize: 17.0,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            shadows: [
                                              Shadow(
                                                color: Colors.black,
                                                blurRadius: 24,
                                                offset: Offset(1, 1),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              (item["created_at"].toDate() as DateTime)
                                  .dMMMykkmmss,
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 8.0),
                            Expanded(
                              child: Text(
                                item["notes"],
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 15.0,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
          const SizedBox(
            height: 5.0,
          ),
        ],
      ),
    );
  }
}
