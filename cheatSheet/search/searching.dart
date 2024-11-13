import 'dart:io';

void main(){
  List<String> fruits = ["apple", "banana", "pear"];
  bool hasBanana = fruits.contains('banana');
  bool hasMango = fruits.contains("mango");
  int index = fruits.indexOf("pear");
  print(index);
  print("has this list banana: $hasBanana");
  print("has this list mango: $hasMango");

  List<int> numbers = [10,  30, 40, 50];
  int firstIndex = numbers.indexOf(20);
  print("first index of 20: $firstIndex");
  print(numbers[firstIndex]);

  List users = [{ "id": 1, "name": "Hjalti"}, {"id": 2, "name": "harley"},{ "id": 1, "name": "Hjalti1"}];
  print("please search for a user");
  String? search = stdin.readLineSync();
  int searchId =  int.parse(search!);
  var user = users.firstWhere((user) => user["id"] == searchId, orElse: () => null);
  if(user != null){
    print('Found user: ${user['name']}');
  } else{
    print("user not found");
  }


  //Nota alveg eins og ég nema nota lastWhere og finna seinast user
  //Nota nafn og skila id?
}