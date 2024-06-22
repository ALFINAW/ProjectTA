import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/berita_detail_controller.dart';

class BeritaDetailView extends StatefulWidget {
  final Map<String, dynamic> item;
  BeritaDetailView({
    Key? key,
    required this.item,
  }) : super(key: key);

  Widget build(context, BeritaDetailController controller) {
    controller.view = this;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 350.0,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          item["photo"] ??
                              "https://res.cloudinary.com/dotz74j1p/image/upload/v1715660683/no-image.jpg",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  //circle_icon
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(top: 16.0, left: 10.0),
                      child: InkWell(
                        onTap: () => Get.back(),
                        child: CircleAvatar(
                          backgroundColor: Colors.grey[300],
                          child: Icon(
                            Icons.arrow_back,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                      margin: EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item["title"],
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                (item["created_at"].toDate() as DateTime)
                                    .dMMMykkmmss,
                                style: TextStyle(
                                  fontSize: 15.0,
                                ),
                              ),
                              InkWell(
                                onTap: () async {
                                  var snapshot = await FirebaseFirestore
                                      .instance
                                      .collection("news_likes")
                                      .where("news_id", isEqualTo: item["id"])
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
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Icon(
                                      Icons.thumb_up,
                                      color: Colors.grey[800],
                                      size: 19.0,
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
                          SizedBox(
                            height: 20.0,
                          ),
                          Text(
                            item["body"] ?? "-",
                            style: TextStyle(
                              fontSize: 15.0,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                        ],
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<BeritaDetailView> createState() => BeritaDetailController();
}
