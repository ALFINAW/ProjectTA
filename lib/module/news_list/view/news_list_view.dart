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
      body: Container(
        color: backgroundColor,
        padding: const EdgeInsets.all(13.0),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color(0x19000000),
                    blurRadius: 24,
                    offset: Offset(0, 11),
                  ),
                ],
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide(
                        color: Colors.grey[300]!,
                      )),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.blueGrey[900],
                  ),
                  suffixIcon: Container(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.sort,
                      color: Colors.blueGrey[900],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            Expanded(
              child: Builder(builder: (context) {
                List menuItems = [
                  {
                    "image":
                        "https://images.unsplash.com/photo-1561828718-3971eadec8b5?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8aW5jaWRlbnR8ZW58MHx8MHx8fDA%3D",
                    "title": "Polisi amankan tiga pemuda hendak bunuh diri",
                    "date": "09 Januari 2024",
                    "like": "15"
                  },
                  {
                    "image":
                        "https://images.unsplash.com/photo-1626030952277-9fbe79141a31?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW5jaWRlbnR8ZW58MHx8MHx8fDA%3D",
                    "title": "Kecelakaan beruntun di jl.Garuda",
                    "date": "23 Januari 2024",
                    "like": "18"
                  },
                  {
                    "image":
                        "https://plus.unsplash.com/premium_photo-1686397308706-9547f8cc4e32?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8aW5jaWRlbnR8ZW58MHx8MHx8fDA%3D",
                    "title": "Penyelamatan pemuda tenggelam di laut",
                    "date": "08 Februari 2024",
                    "like": "20"
                  },
                  {
                    "image":
                        "https://images.unsplash.com/photo-1604275689235-fdc521556c16?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8Zmxvb2R8ZW58MHx8MHx8fDA%3D",
                    "title": "Banjir di desa karangsari tidak kunjung surut",
                    "date": "26 Januari 2024",
                    "like": "11"
                  },
                  {
                    "image":
                        "https://images.unsplash.com/photo-1560956737-3428333ba83f?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8aW5jaWRlbnR8ZW58MHx8MHx8fDA%3D",
                    "title": "Kebakaran di pasar pahing maos",
                    "date": "15 Januari 2024",
                    "like": "22"
                  },
                  {
                    "image":
                        "https://plus.unsplash.com/premium_photo-1664197368374-605ce8ec8f54?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8bmV3c3xlbnwwfHwwfHx8MA%3D%3D",
                    "title": "Saham beras bulog diancam turun",
                    "date": "21 Februari 2024",
                    "like": "10"
                  }
                ];
                return ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: menuItems.length,
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    var item = menuItems[index];
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
                              item["image"],
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
                                    item["date"],
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
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Icon(
                                          Icons.thumb_up,
                                          color: Colors.grey[800],
                                          size: 20.0,
                                        ),
                                        Text(
                                          item["like"],
                                          style: TextStyle(fontSize: 16.0),
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
                  },
                );
              }),
            )
          ],
        ),
      ),
    );
  }

  @override
  State<NewsListView> createState() => NewsListController();
}