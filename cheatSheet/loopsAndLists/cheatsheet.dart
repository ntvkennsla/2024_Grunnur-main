void main() {
  List<String> myList = [];
  myList.add("Velkomin-i-NTV");
  myList.add("Búa til meeting");
  myList.add("share screen");
  myList.add("Kveikja á record");
 for(String listItem in myList) {
   print("Muna að: $listItem");
 }
  myList.add("Slökkkva á record");
  myList.add("Læsa og slökkva");
  print("______________________");
  for(String listItem in myList) {
    print(listItem);
  }
  print("______________________");
  print(myList[4]);

 //List<int> myNumbers = [5885522,112,5812345];

 //for(int numb in myNumbers) {
   //print(numb);
 //}
}