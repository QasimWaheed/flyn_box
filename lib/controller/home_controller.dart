import 'package:get/get.dart';

class HomeController extends GetxController {
  final RxInt _currentIndex = RxInt(0);

  int get currentIndex => _currentIndex.value;

  set currentIndex(int value) {
    _currentIndex(value);
  }
}