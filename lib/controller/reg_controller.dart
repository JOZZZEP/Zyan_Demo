import 'package:first_app/models/reg_model.dart';
import 'package:get/get.dart';

class RegController extends GetxController {
  factory RegController() => _instance;
  RegController._internal();
  static final RegController _instance = RegController._internal();

  final RegModel _model = RegModel();
  RegModel get model => _model;

  String get name => model.name;
  void setName(String name) {
    model.setName(name);
  }

  String get lastName => model.lastName;
  void setLastName(String lastName) {
    model.setLastName(lastName);
  }

  String get address => model.address;
  void setAddress(String address) {
    model.setAddress(address);
  }

  String get phone => model.phone;
  void setPhone(String phone) {
    model.setPhone(phone);
  }
}
