import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/user_detail_ajuan_view.dart';

class UserDetailAjuanController extends State<UserDetailAjuanView> {
  static late UserDetailAjuanController instance;
  late UserDetailAjuanView view;

  @override
  void initState() {
    instance = this;
    super.initState();
    isSudahDiambil = widget.item["sudah_diambil"] == "Sudah";
    isApprove = widget.item["status"] == "Approved";
    rejectedNotes = widget.item["rejected_notes"] ?? "";
    date = widget.item["date"]?.toDate();
    time = widget.item["time"] != null
        ? TimeOfDay(
            hour:
                int.tryParse(widget.item["time"].toString().split(":").first) ??
                    0,
            minute:
                int.tryParse(widget.item["time"].toString().split(":").last) ??
                    0)
        : null;
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  bool isApprove = false;
  bool isSudahDiambil = false;
  String rejectedNotes = "";
  DateTime? date;
  TimeOfDay? time;

  save() async {
    showLoading();
    await FirebaseFirestore.instance
        .collection("user_request")
        .doc(view.item["id"])
        .update({
      "status": isApprove ? "Approved" : "Rejected",
      "sudah_diambil": isSudahDiambil ? "Sudah" : "Belum",
      "rejected_notes": isApprove ? null : rejectedNotes,
      "date": date == null ? null : date,
      "time": time == null ? null : "${time?.hour}:${time?.minute}",
      "updated_at": Timestamp.now(),
      "approved_at": !isApprove ? null : Timestamp.now(),
      "rejected_at": isApprove ? null : Timestamp.now(),
    });

    hideLoading();

    Get.back();
    ss("Update data berhasil!");
  }

  refresh() {
    setState(() {});
  }
}
