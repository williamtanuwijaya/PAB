import 'package:flutter/material.dart';
import 'package:pencarian_candi/data/candi_data.dart';
import 'package:pencarian_candi/models/candi.dart';
import 'package:pencarian_candi/widgets/item_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //TODO : 1. Buat Appbar dengan jduul wisata candi
        appBar: AppBar(title: const Text('Wisata Candi')),
        //TODO: 2. Buat Body dengan Gridview.builder
        body: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            padding: const EdgeInsets.all(8),
            itemCount: candiList.length,
            itemBuilder: (context, index) {
              //TODO: 3. Buat ItemCard sebagai return value dari GridView.builder
              Candi candi = candiList[index];
              return ItemCard(candi: candi);
            }));
  }
}
