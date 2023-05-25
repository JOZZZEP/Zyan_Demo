import 'package:first_app/api/api_cows.dart';
import 'package:first_app/models/cow_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CowsList extends StatefulWidget {
  const CowsList({super.key});

  @override
  State<CowsList> createState() => _CowsListState();
}

class _CowsListState extends State<CowsList> {
  late Future<List<CowModel>> getCows;

  Future<List<CowModel>> _getCows() async {
    return await ApiCows.getCows();
  }

  Future<void> _refresh() async {
    setState(() {
      getCows = _getCows();
    });
  }

  @override
  void initState() {
    getCows = _getCows();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'รายการโค',
          style: GoogleFonts.kanit(
            fontSize: 20,
          ),
        ),
      ),
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: _refresh,
          child: FutureBuilder<List<CowModel>>(
            future: getCows,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    CowModel cow = snapshot.data![index];
                    return Card(
                      child: ListTile(
                        leading: CircleAvatar(
                          child: Text(cow.name!.substring(0, 1)),
                        ),
                        title: Text("${cow.name}"),
                        subtitle: Text("${cow.cowId}\n${cow.farm}"),
                        trailing: const Icon(Icons.arrow_forward_ios_rounded),
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
