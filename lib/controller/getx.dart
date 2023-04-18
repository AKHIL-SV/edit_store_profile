import 'package:get/get.dart';

class CheckController extends GetxController {
  final checklist = [].obs;

  void addToCheckList(int id) {
    checklist.add(id);
  }

  void removeFromCheckList(int id) {
    checklist.remove(id);
  }

  bool isCheckList(int id) {
    return checklist.contains(id);
  }
}
