import 'package:first_app/models/cow_model.dart';

class ApiCows {
  static Future<List<CowModel>> getCows() async {
    // this is a mockup data
    await Future.delayed(const Duration(seconds: 2));
    List<CowModel> cows = [
      CowModel(
        name: 'หมวย',
        cowId: "14564564531231",
        farm: 'ใจดีฟาร์ม',
      ),
      CowModel(
        name: 'มด',
        cowId: "2445645645645",
        farm: 'ใจดีฟาร์ม',
      ),
      CowModel(
        name: 'อเล็ก',
        cowId: "3456456456456",
        farm: 'สุขใจฟาร์ม',
      ),
      CowModel(
        name: 'บ๊อบ',
        cowId: "444565625645",
        farm: 'ใจดีฟาร์ม',
      ),
      CowModel(
        name: 'บอย',
        cowId: "54563486486456",
        farm: 'สุขใจฟาร์ม',
      ),
    ];
    return cows;
  }
}
