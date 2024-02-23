import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../../../model/family_member.dart';
import '../controller/user_pengajuan_kk_controller.dart';

class UserPengajuanKkView extends StatefulWidget {
  const UserPengajuanKkView({Key? key}) : super(key: key);

  Widget build(context, UserPengajuanKkController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pengajuan Surat Pengantar KK",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            )),
        centerTitle: true,
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          color: backgroundColor,
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              QTextFieldForm(
                label: "Nama:",
                onChanged: (p0) {},
                hint: "masukan nama lengkap anda",
              ),
              QTextFieldForm(
                label: "Tempat/tanggal lahir:",
                onChanged: (p0) {},
                hint: "masukan tempat/tanggal lahir anda",
              ),
              QTextFieldForm(
                label: "Jenis kelamin:",
                onChanged: (p0) {},
                hint: "masukan jenis kelamin anda",
              ),
              QTextFieldForm(
                label: "Agama:",
                onChanged: (p0) {},
                hint: "masukan agama anda",
              ),
              QTextFieldForm(
                label: "Status perkawinan:",
                onChanged: (p0) {},
                hint: "masukan status perkawinan anda",
              ),
              QTextFieldForm(
                label: "Pekerjaan:",
                onChanged: (p0) {},
                hint: "masukan pekerjaan anda",
              ),
              QTextFieldForm(
                label: "Alamat/tempat tinggal:",
                onChanged: (p0) {},
                hint: "masukan alamat lengkap anda",
              ),
              QTextFieldForm(
                label: "Keperluan:",
                onChanged: (p0) {},
                hint: "masukan keperluan anda",
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    //text001
                    "Keluarga yang ikut:",
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {
                      controller.familyMemberController
                          .addFamilyMember(FamilyMember(
                        name: '',
                        gender: '',
                        maritalStatus: '',
                        placeOfBirth: '',
                        dateOfBirth: '',
                      ));
                      // setState(() {});
                    },
                  )
                ],
              ),
              const SizedBox(height: 15.0),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: DataTable(
                  columns: [
                    DataColumn(label: Text('Nama')),
                    DataColumn(label: Text('Jenis Kelamin')),
                    DataColumn(label: Text('Status Perkawinan')),
                    DataColumn(label: Text('Tempat Lahir')),
                    DataColumn(label: Text('Tanggal Lahir')),
                  ],
                  rows: controller.familyMemberController.familyMembers
                      .map((member) {
                    return DataRow(
                      cells: [
                        DataCell(TextFormField(
                          initialValue: member.name,
                          onChanged: (value) {
                            member.name = value;
                          },
                        )),
                        DataCell(TextFormField(
                          initialValue: member.gender,
                          onChanged: (value) {
                            member.gender = value;
                          },
                        )),
                        DataCell(TextFormField(
                          initialValue: member.maritalStatus,
                          onChanged: (value) {
                            member.maritalStatus = value;
                          },
                        )),
                        DataCell(TextFormField(
                          initialValue: member.placeOfBirth,
                          onChanged: (value) {
                            member.placeOfBirth = value;
                          },
                        )),
                        DataCell(TextFormField(
                          
                          initialValue: member.dateOfBirth,
                          onChanged: (value) {
                            member.dateOfBirth = value;
                          },
                        )),
                      ],
                    );
                  }).toList(),
                ),
              ),
              const SizedBox(height: 15.0),
              QButtonForm(label: "Ajukan", onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<UserPengajuanKkView> createState() => UserPengajuanKkController();
}
