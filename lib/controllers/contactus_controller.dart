import 'package:get/get.dart';

class ContactusController extends GetxController {
  final _from = ''.obs;
  final _messageText = ''.obs;

  get from => _from.value;
  get message => _messageText.value;

  set from(String value) => _from.value = value;
  set message(String value) => _messageText.value = value;
}
