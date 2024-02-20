import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/user_news_detail_controller.dart';

class UserNewsDetailView extends StatefulWidget {
  const UserNewsDetailView({Key? key}) : super(key: key);

  Widget build(context, UserNewsDetailController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                height: 300.0,
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
              const SizedBox(
                height: 10.0,
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
                              fontSize: 22.0,
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
                                  fontSize: 16.0,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Icon(
                                    Icons.thumb_up,
                                    color: Colors.grey[800],
                                    size: 20.0,
                                  ),
                                  Text(
                                    "15",
                                    style: TextStyle(fontSize: 16.0),
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
                              fontSize: 17.0,
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
  State<UserNewsDetailView> createState() => UserNewsDetailController();
}
