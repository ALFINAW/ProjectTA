import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/news_detail_controller.dart';

class NewsDetailView extends StatefulWidget {
  const NewsDetailView({Key? key}) : super(key: key);

  Widget build(context, NewsDetailController controller) {
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
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://images.unsplash.com/photo-1561828718-3971eadec8b5?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8aW5jaWRlbnR8ZW58MHx8MHx8fDA%3D",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  //circle_icon
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 16.0, left: 10.0),
                      child: InkWell(
                        onTap: () => Get.back(),
                        child: Icon(
                          size: 28,
                          Icons.arrow_back,
                          color: Colors.grey[300],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                      margin: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Polisi Amankan Tiga Pemuda Hendak Bunuh Diri",
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "09 Januari 2024",
                                style: TextStyle(
                                  fontSize: 15.0,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Icon(
                                    Icons.thumb_up,
                                    color: Colors.grey[800],
                                    size: 19.0,
                                  ),
                                  Text(
                                    "15",
                                    style: TextStyle(fontSize: 15.0),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus nec velit ut lectus accumsan suscipit. Nulla facilisi. Proin eu nisi non felis fermentum ullamcorper. Phasellus non mi vitae nisi pharetra malesuada. Vestibulum id felis sapien. Sed tincidunt convallis nisi, sed feugiat elit molestie vel. Cras vestibulum id eros at cursus. Vivamus pulvinar posuere orci ut suscipit. Cras ultricies justo nec lorem sollicitudin, id convallis tortor fringilla.\nAliquam nec turpis a mi ullamcorper sagittis. Maecenas dignissim tristique magna. Phasellus sit amet dictum nulla. Integer auctor eros nec justo feugiat vestibulum. Phasellus eget tellus ghjahvjshvjhvjjhvjhvshvkavjhvavjhvsjhvjhsvjhvjhsvjhvshdvkjhvsdvjhasvjhvjhsavdjhvjhsvdjhvajhsvdjhvsdjhvsajhvheyksshdgfkjhgfgyddjhgfj",
                            style: TextStyle(
                              fontSize: 15.0,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                          const SizedBox(
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
  State<NewsDetailView> createState() => NewsDetailController();
}
