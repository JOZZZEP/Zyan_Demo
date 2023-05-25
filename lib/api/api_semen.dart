import 'package:first_app/models/cow_model.dart';
import 'package:first_app/models/semen_model.dart';

class ApiSemen {
  static List<SemenModel> semen = [
    SemenModel(
      number: 'fd56',
      importDate: "3 พฤษภาคม 2566",
      amount: '23',
    ),
    SemenModel(
      number: 'ttr54',
      importDate: "15 พฤษภาคม 2566",
      amount: '15',
    ),
    SemenModel(
      number: 'lkl',
      importDate: "24 พฤษภาคม 2566",
      amount: '35',
    ),
  ];
  static Future<List<SemenModel>> getSemen() async {
    await Future.delayed(const Duration(seconds: 1));
    return semen;
  }

  static void addSemen(SemenModel value) {
    semen.add(value);
  }
}
