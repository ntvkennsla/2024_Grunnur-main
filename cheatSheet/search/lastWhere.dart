
import 'dart:io';

void main() {
  List users = [
    { "id": 1, "name": "Hjalti"},
    { "id": 2, "name": "harley"},
    { "id": 3, "name": "Hjalti"}
  ];
  print("please search for a user");
  String search = stdin.readLineSync()!;

  var user = users.lastWhere((user) => user["name"].toLowerCase() == search.toLowerCase(),
      orElse: () => null);
  if (user != null) {
    print('Found user: ${user['id']}');
  } else {
    print("user not found");
  }
}