import 'package:fruit_market/features/auth/domain/repos/auth_repo.dart';

class AuthRepoImpl extends AuthRepo{
  @override
  Future completeInfo({String? name, String? phoneNumber, String? address}) {
    throw UnimplementedError();
  }

  @override
  Future loginWithFaceBook() {
    throw UnimplementedError();
  }

  @override
  Future loginWithGoogle() {
    throw UnimplementedError();
  }
}