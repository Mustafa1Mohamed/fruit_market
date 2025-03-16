import 'package:flutter/foundation.dart';

abstract class AuthRepo {
  Future loginWithGoogle();
  Future loginWithFaceBook();
  Future completeInfo({
    @required String name,
    @required String phoneNumber,
    @required String address,
  });
}
