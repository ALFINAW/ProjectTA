import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/berita_form_controller.dart';

class BeritaFormView extends StatefulWidget {
  BeritaFormView({Key? key}) : super(key: key);

  Widget build(context, BeritFormController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: Text("NewsForm"),
        actions: [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10.0),
          child: Form(
            key: controller.formKey,
            child: Card(
              color: Colors.white,
              child: Container(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    QImagePicker(
                      label: "Photo",
                      validator: Validator.required,
                      value: controller.photo,
                      onChanged: (value) {
                        controller.photo = value;
                      },
                    ),
                    QTextField(
                      label: "Title",
                      validator: Validator.required,
                      value: controller.title,
                      onChanged: (value) {
                        controller.title = value;
                      },
                    ),
                    QMemoField(
                      label: "Body",
                      validator: Validator.required,
                      value: controller.body,
                      onChanged: (value) {
                        controller.body = value;
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: QActionButton(
        label: "Save",
        onPressed: () async {
          bool isNotValid =
              controller.formKey.currentState!.validate() == false;
          if (isNotValid) {
            return;
          }
          controller.save();
        },
      ),
    );
  }

  @override
  State<BeritaFormView> createState() => BeritFormController();
}
