import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
part 'user_model.g.dart';

@CopyWith()
class UserModel extends Equatable {
  final String username;
  final String email;
  final String password;
  final String phoneNumber;

  const UserModel(
      {this.phoneNumber = "",
      this.password = "",
      this.username = '',
      this.email = ''});

  @override
  List<Object?> get props => [username, email, phoneNumber, password];
}
