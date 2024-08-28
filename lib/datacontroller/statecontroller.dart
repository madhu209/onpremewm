import 'package:onpremewm/network/models/userdata.dart';

class StateController {
  static final StateController _singleton = StateController._internal();

  UserData userData = UserData();

  factory StateController() {
    return _singleton;
  }

  StateController._internal();
}
