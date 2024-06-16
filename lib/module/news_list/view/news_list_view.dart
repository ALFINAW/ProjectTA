import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/news_list_controller.dart';

class NewsListView extends StatefulWidget {
  const NewsListView({Key? key}) : super(key: key);

  Widget build(context, NewsListController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Berita Desa",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: const [],
      ),
      floatingActionButton: !isAdmin
          ? null
          : FloatingActionButton(
              child: const Icon(Icons.add),
              onPressed: () async {
                await Get.to(NewsFormView());
              },
            ),
      body: Container(
        color: backgroundColor,
        padding: const EdgeInsets.all(13.0),
        child: Column(
          children: [
            Expanded(
              child: StreamBuilder<QuerySnapshot>(
                stream:
                    FirebaseFirestore.instance.collection("news").snapshots(),
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
                      var item = items[index];
                      bool isFirstItem = index == 0;

                      if (isFirstItem) {
                        return GestureDetector(
                          onTap: () => Get.to(NewsDetailView()),
                          child: Container(
                            margin: const EdgeInsets.only(bottom: 10.0),
                            padding: const EdgeInsets.only(bottom: 8.0),
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
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  children: [
                                    Image.network(
                                      item["photo"],
                                      width: double.infinity,
                                      height: 270.0,
                                      fit: BoxFit.cover,
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
                                                fontSize: 18.0,
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
                                const SizedBox(height: 8.0),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8.0, right: 8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        DateFormat("d MMMM").format(
                                            item['created_at']?.toDate()),
                                        style: TextStyle(
                                          fontSize: 15.0,
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () async {
                                          var snapshot = await FirebaseFirestore
                                              .instance
                                              .collection("news_likes")
                                              .where("news_id",
                                                  isEqualTo: item.id)
                                              .where("user_id",
                                                  isEqualTo: currentUser!.uid)
                                              .get();
                                          if (snapshot.docs.isNotEmpty) {
                                            se("Kamu sudah pernah like postingan ini");
                                            return;
                                          }

                                          await FirebaseFirestore.instance
                                              .collection("news")
                                              .doc(item.id)
                                              .update({
                                            "like_count":
                                                FieldValue.increment(1),
                                          });
                                          await FirebaseFirestore.instance
                                              .collection("news_likes")
                                              .add({
                                            "news_id": item.id,
                                            "user_id": currentUser!.uid,
                                          });
                                        },
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Icon(
                                              Icons.thumb_up,
                                              color: Colors.grey[800],
                                              size: 19.0,
                                            ),
                                            const SizedBox(
                                              width: 4.0,
                                            ),
                                            Text(
                                              "${item["like_count"]}",
                                              style: TextStyle(fontSize: 15.0),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }

                      return GestureDetector(
                        onTap: () => Get.to(NewsDetailView()),
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
                                item["photo"],
                                width: 140.0,
                                height: 94.0,
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
                                      DateFormat("d MMMM")
                                          .format(item['created_at']?.toDate()),
                                      style: TextStyle(
                                        fontSize: 14.0,
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
                                                  isEqualTo: item.id)
                                              .where("user_id",
                                                  isEqualTo: currentUser!.uid)
                                              .get();
                                          if (snapshot.docs.isNotEmpty) {
                                            se("Kamu sudah pernah like postingan ini");
                                            return;
                                          }

                                          await FirebaseFirestore.instance
                                              .collection("news")
                                              .doc(item.id)
                                              .update({
                                            "like_count":
                                                FieldValue.increment(1),
                                          });
                                          await FirebaseFirestore.instance
                                              .collection("news_likes")
                                              .add({
                                            "news_id": item.id,
                                            "user_id": currentUser!.uid,
                                          });
                                        },
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Icon(
                                              Icons.thumb_up,
                                              color: Colors.grey[800],
                                              size: 19.0,
                                            ),
                                            const SizedBox(
                                              width: 4.0,
                                            ),
                                            Text(
                                              item["like_count"].toString(),
                                              style: TextStyle(fontSize: 15.0),
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
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<NewsListView> createState() => NewsListController();
}
