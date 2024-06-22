import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

import '../controller/wellcome_controller.dart';

class WellcomeView extends StatefulWidget {
  const WellcomeView({Key? key}) : super(key: key);

  Widget build(context, WellcomeController controller) {
    controller.view = this;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Row(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width * 0.5,
                  decoration: BoxDecoration(
                    color: primaryColor,
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width * 0.5,
                  decoration: BoxDecoration(
                    color: backgroundColor,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(10.0),
                  height: MediaQuery.of(context).size.height * 0.4,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: backgroundColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(70.0),
                    ),
                  ),
                  child: Image.asset(
                    "assets/vector/vector_people.png",
                    fit: BoxFit.contain,
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(30.0),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(70.0),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Ada banyak hal yang terjadi di sekitarmu !",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 23.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 15.0,
                        ),
                        Text(
                          "Temukan peristiwa di sekitar anda. \nanda dapat mencari dan melakukan suatu hal sesuai keinginan",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                          ),
                        ),
                        const SizedBox(
                          height: 35.0,
                        ),
                        QButton(
                            label: 'Sign In',
                            onPressed: () => Get.to(SignInView())),
                        const SizedBox(
                          height: 25.0,
                        ),
                        QOutlineButton(
                            label: 'Register',
                            onPressed: () => Get.to(SignUpView())),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<WellcomeView> createState() => WellcomeController();
}
