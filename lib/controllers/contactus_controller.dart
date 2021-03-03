import 'package:get/get.dart';

class ContactusController extends GetxController {
  final _to = ''.obs;
  final _messageText = ''.obs;

  get to => _to.value;
  get message => _messageText.value;

  set to(String value) => _to.value = value;
  set message(String value) => _messageText.value = value;
}
