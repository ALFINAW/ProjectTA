import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

import '../../../model/family_member.dart';
import '../controller/family_member_controller.dart';

class UserPengajuanKk1View extends StatefulWidget {
  const UserPengajuanKk1View({super.key});

  @override
  State<UserPengajuanKk1View> createState() => _UserPengajuanKk1ViewState();
}

class _UserPengajuanKk1ViewState extends State<UserPengajuanKk1View> {
  late FamilyMemberController controller;

  @override
  void initState() {
    super.initState();
    controller = FamilyMemberController();
    // Add an initial empty family member
    controller.addFamilyMember(FamilyMember(
      name: '',
      gender: '',
      maritalStatus: '',
      placeOfBirth: '',
      dateOfBirth: '',
    ));
  }

  @override
  Widget build(BuildContext context) {
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
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              QTextFieldForm(
                label: "Nama:",
                onChanged: (p0) {},
                hint: "masukan nama lengkap anda",
              ),
              QTextFieldForm(
                label: "Tempat / Tanggal Lahir:",
                onChanged: (p0) {},
                hint: "masukan tempat/tanggal lahir anda",
              ),
              QTextFieldForm(
                label: "Jenis Kelamin:",
                onChanged: (p0) {},
                hint: "masukan jenis kelamin anda",
              ),
              QTextFieldForm(
                label: "Agama:",
                onChanged: (p0) {},
                hint: "masukan agama anda",
              ),
              QTextFieldForm(
                label: "Status Perkawinan:",
                onChanged: (p0) {},
                hint: "masukan status perkawinan anda",
              ),
              QTextFieldForm(
                label: "Pekerjaan:",
                onChanged: (p0) {},
                hint: "masukan pekerjaan anda",
              ),
              QTextFieldForm(
                label: "Alamat / Tempat Tinggal:",
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
                    "Keluarga Yang Ikut:",
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {
                      controller.addFamilyMember(FamilyMember(
                        name: '',
                        gender: '',
                        maritalStatus: '',
                        placeOfBirth: '',
                        dateOfBirth: '',
                      ));
                      setState(() {});
                    },
                  )
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: DataTable(
                  headingRowHeight: 60,
                  dataRowHeight: 60,
                  columnSpacing: 30,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(13),
                  ),
                  columns: [
                    DataColumn(label: Text('Nama')),
                    DataColumn(label: Text('Jenis Kelamin')),
                    DataColumn(label: Text('Status Perkawinan')),
                    DataColumn(label: Text('Tempat Lahir')),
                    DataColumn(label: Text('Tanggal Lahir')),
                  ],
                  rows: controller.familyMembers.map((member) {
                    return DataRow(
                      cells: [
                        DataCell(Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x19000000),
                                blurRadius: 24,
                                offset: Offset(0, 11),
                              ),
                            ],
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                            ),
                            initialValue: member.name,
                            onChanged: (value) {
                              member.name = value;
                            },
                          ),
                        )),
                        DataCell(Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x19000000),
                                blurRadius: 24,
                                offset: Offset(0, 11),
                              ),
                            ],
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                            ),
                            initialValue: member.gender,
                            onChanged: (value) {
                              member.gender = value;
                            },
                          ),
                        )),
                        DataCell(Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x19000000),
                                blurRadius: 24,
                                offset: Offset(0, 11),
                              ),
                            ],
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                            ),
                            initialValue: member.maritalStatus,
                            onChanged: (value) {
                              member.maritalStatus = value;
                            },
                          ),
                        )),
                        DataCell(Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x19000000),
                                blurRadius: 24,
                                offset: Offset(0, 11),
                              ),
                            ],
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                            ),
                            initialValue: member.placeOfBirth,
                            onChanged: (value) {
                              member.placeOfBirth = value;
                            },
                          ),
                        )),
                        DataCell(Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x19000000),
                                blurRadius: 24,
                                offset: Offset(0, 11),
                              ),
                            ],
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                            ),
                            initialValue: member.dateOfBirth,
                            onChanged: (value) {
                              member.dateOfBirth = value;
                            },
                          ),
                        )),
                      ],
                    );
                  }).toList(),
                ),
              ),
              const SizedBox(height: 15.0),
              QButtonForm(label: "Kirim", onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
