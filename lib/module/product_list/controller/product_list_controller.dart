import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/product_list_view.dart';

class ProductListController extends State<ProductListView> {
  static late ProductListController instance;
  late ProductListView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
  List<Map<String, dynamic>> products = [
    {
      "nama": "Sate Ayam",
      "penjual": "Suwiryo",
      "harga": 15000,
      "image":
          "https://images.unsplash.com/photo-1529563021893-cc83c992d75d?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8aW5kb25lc2lhbiUyMGZvb2R8ZW58MHx8MHx8fDA%3D"
    },
    {
      "nama": "Gado-gado",
      "penjual": "Aminah",
      "harga": 15000,
      "image":
          "https://images.unsplash.com/photo-1562607635-4608ff48a859?w=700&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW5kb25lc2lhbiUyMGZvb2R8ZW58MHx8MHx8fDA%3D"
    },
    {
      "nama": "Pecel Lele",
      "penjual": "Jono",
      "harga": 11000,
      "image":
          "https://images.unsplash.com/photo-1613653739328-e86ebd77c9c8?w=700&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8aW5kb25lc2lhbiUyMGZvb2R8ZW58MHx8MHx8fDA%3D"
    },
    {
      "nama": "Soto",
      "penjual": "Pak Arya",
      "harga": 15000,
      "image":
          "https://images.unsplash.com/photo-1572656631137-7935297eff55?w=700&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8aW5kb25lc2lhbiUyMGZvb2R8ZW58MHx8MHx8fDA%3D"
    },
    {
      "nama": "Ramen",
      "penjual": "Dimas",
      "harga": 16000,
      "image":
          "https://images.unsplash.com/photo-1569718212165-3a8278d5f624?w=700&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTV8fGluZG9uZXNpYW4lMjBmb29kfGVufDB8fDB8fHww"
    },
    {
      "nama": "Tumis Kangkung",
      "penjual": "Darmi",
      "harga": 7000,
      "image":
          "https://images.unsplash.com/photo-1632879704262-1911cd5a36be?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fGluZG9uZXNpYW4lMjBmb29kfGVufDB8fDB8fHww"
    },
    // Add more products as needed
  ];
}
