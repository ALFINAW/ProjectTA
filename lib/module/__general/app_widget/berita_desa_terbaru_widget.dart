import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class BeritaDesaTerbaruWidget extends StatelessWidget {
  const BeritaDesaTerbaruWidget({
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
              title: 'Berita Desa Terbaru',
              subtitle: 'Lihat semua',
              onPressed: () => Get.to(BeritaListView())),
          const SizedBox(
            height: 5.0,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Baca & temukan berita terbaru tentang desa",
                style: TextStyle(
                  fontSize: 15.0,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20.0,
          ),
          StreamBuilder<QuerySnapshot>(
            stream: FirebaseFirestore.instance
                .collection("news")
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
                padding: EdgeInsets.zero,
                itemCount: items.length,
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  var item = items[index].data() as Map<String, dynamic>;
                  item["id"] = items[index].id;
                  return GestureDetector(
                    onTap: () => Get.to(BeritaDetailView(
                      item: item,
                    )),
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 10.0),
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
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
                          Image.network(
                            item["photo"] ??
                                "https://res.cloudinary.com/dotz74j1p/image/upload/v1715660683/no-image.jpg",
                            width: 120.0,
                            height: 80.0,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(
                            width: 12.0,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  item["title"],
                                  style: const TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(
                                  height: 4.0,
                                ),
                                Text(
                                  (item["created_at"].toDate() as DateTime)
                                      .dMMMykkmmss,
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    color: Colors.grey[600],
                                  ),
                                ),
                                const SizedBox(
                                  height: 8.0,
                                ),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: InkWell(
                                    onTap: () async {
                                      var snapshot = await FirebaseFirestore
                                          .instance
                                          .collection("news_likes")
                                          .where("news_id",
                                              isEqualTo: item["id"])
                                          .where("user_id",
                                              isEqualTo: currentUser!.uid)
                                          .get();
                                      if (snapshot.docs.isNotEmpty) {
                                        se("Kamu sudah pernah like postingan ini");
                                        return;
                                      }

                                      await FirebaseFirestore.instance
                                          .collection("news")
                                          .doc(item["id"])
                                          .update({
                                        "like_count": FieldValue.increment(1),
                                      });
                                      await FirebaseFirestore.instance
                                          .collection("news_likes")
                                          .add({
                                        "news_id": item["id"],
                                        "user_id": currentUser!.uid,
                                      });
                                    },
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Icon(
                                          Icons.thumb_up,
                                          color: Colors.grey[800],
                                          size: 20.0,
                                        ),
                                        Text(
                                          "${item["like_count"]}",
                                          style: TextStyle(fontSize: 16.0),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
