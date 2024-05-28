import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/shared/widget/form/textfield/text_field_form_dark.dart';
import '../controller/admin_detail_ajuan_controller.dart';

class AdminDetailAjuanView extends StatefulWidget {
  const AdminDetailAjuanView({super.key});

  @override
  State<AdminDetailAjuanView> createState() => _AdminDetailAjuanViewState();
}

class _AdminDetailAjuanViewState extends State<AdminDetailAjuanView> {
  bool _isMale = false;
  bool _isFemale = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Pengajuan Surat",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            )),
        centerTitle: true,
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(13.0),
          color: backgroundColor,
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(20.0),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Nama :",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    Text(
                      "Alfin Andrias Wardoyo",
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      "Tempat / Tanggal Lahir :",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    Text(
                      "20 Juni 2005",
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      "Umur :",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    Text(
                      "17",
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      "Warga Negara :",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    Text(
                      "WNI",
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      "Agama :",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    Text(
                      "Islam",
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      "Jenis Kelamin :",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    Text(
                      "Laki-laki",
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      "Pekerjaan :",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    Text(
                      "Belum kerja",
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      "Alamat / Tempat Tinggal :",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    Text(
                      "Jl. Niaga RT/RW 01/04 Karangrena, Maos, Cilacap",
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      "Fotokopi KK :",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    Text(
                      "KK.png",
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      "Keperluan :",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    Text(
                      "Ajuan pembuatan KTP",
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      "Golongan Darah :",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    Text(
                      "-",
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                  ],
                ),
              ),
              const SizedBox(height: 13.0),
              Container(
                padding: const EdgeInsets.all(20.0),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Keterangan",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    Text(
                      "Acc :",
                      style: TextStyle(fontSize: 15.0),
                    ),
                    CheckboxListTile(
                      title: Text(
                        'Silahkan datang dan ambil surat Anda di Balai Desa',
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                      ),
                      contentPadding: EdgeInsets.only(left: -8.0),
                      controlAffinity: ListTileControlAffinity.leading,
                      value: _isMale,
                      onChanged: (bool? value) {
                        setState(() {
                          _isMale = value ?? false;
                          if (_isMale) {
                            _isFemale = false;
                          }
                        });
                      },
                    ),
                    const SizedBox(height: 5.0),
                    Text(
                      "Atau :",
                      style: TextStyle(fontSize: 15.0),
                    ),
                    const SizedBox(height: 5.0),
                    QTextFieldFormDark(
                      label: "",
                      onChanged: (p0) {},
                      hint: "masukan keterengan lainnya",
                      helper:
                          "*kosongkan jika di acc dan isi jika tidak di acc",
                    ),
                    Text(
                      "Tanggal :",
                      style: TextStyle(fontSize: 15.0),
                    ),
                    const SizedBox(height: 5.0),
                    QDatePicker(
                      label: '',
                      onChanged: (p0) {},
                    ),
                    Text(
                      "Jam :",
                      style: TextStyle(fontSize: 15.0),
                    ),
                    const SizedBox(height: 5.0),
                    QTimePicker(label: '', onChanged: (p0) {}),
                    Text(
                      "Status :",
                      style: TextStyle(fontSize: 15.0),
                    ),
                    CheckboxListTile(
                      title: Text(
                        'Sudah diambil',
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                      contentPadding: EdgeInsets.only(left: -8.0),
                      controlAffinity: ListTileControlAffinity.leading,
                      value: _isMale,
                      onChanged: (bool? value) {
                        setState(() {
                          _isMale = value ?? false;
                          if (_isMale) {
                            _isFemale = false;
                          }
                        });
                      },
                    ),
                    const SizedBox(height: 15.0),
                    QButtonForm(label: "Kirim", onPressed: () {}),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
