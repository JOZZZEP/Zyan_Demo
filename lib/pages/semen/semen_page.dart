import 'package:first_app/api/api_semen.dart';
import 'package:first_app/models/cow_model.dart';
import 'package:first_app/models/semen_model.dart';
import 'package:first_app/pages/semen/add_semen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SemenPage extends StatefulWidget {
  const SemenPage({super.key});

  @override
  State<SemenPage> createState() => _SemenPageState();
}

class _SemenPageState extends State<SemenPage> {
  late Future<List<SemenModel>> getSemen;

  Future<List<SemenModel>> _getSemen() async {
    return await ApiSemen.getSemen();
  }

  Future<void> _refresh() async {
    setState(() {
      getSemen = _getSemen();
    });
  }

  @override
  void initState() {
    getSemen = _getSemen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'น้ำเชื้อ',
          style: GoogleFonts.kanit(
            fontSize: 20,
          ),
        ),
        actions: [
          MaterialButton(
            minWidth: 20,
            onPressed: () async {
              final result = await Get.to(const AddSemen());
              if (result == "isReload") {
                _refresh();
              }
            },
            child: const Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: _refresh,
          child: FutureBuilder<List<SemenModel>>(
            future: getSemen,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    SemenModel semen = snapshot.data![index];
                    return Card(
                      child: ListTile(
                        leading: CircleAvatar(
                          child: Text(semen.number!.substring(0, 1)),
                        ),
                        title: Text("เบอร์หลอด : ${semen.number}"),
                        subtitle: Text(
                            "วันนำเข้า : ${semen.importDate}\n จำนวน ${semen.amount}"),
                        trailing: const Icon(Icons.edit),
                        onTap: () {},
                      ),
                    );
                  },
                );
              } else if (snapshot.hasError) {
                return Center(
                  child: Text(snapshot.error.toString()),
                );
              }
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
          ),
        ),
      ),
    );
  }
}
