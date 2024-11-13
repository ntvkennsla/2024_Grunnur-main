void main(){
  List<List<dynamic>> multiDimArray = [
    [1, "apple", 3],
    [4, "banana", 6],
    ["grape", 8, 9],
  ];

  //print(multiDimArray[0][1]); //apple
  for(var row in multiDimArray){
    //print(row);
    for(var secondRow in row){
      //print(secondRow);
      if(secondRow == "apple"){
        //print(secondRow);
      }
    }
  }


  List<List<int>> multiDimInts = [
    [0, 1, 2, 3, 4],
    [4, 5, 6],
    [7, 8, 9, 10],
  ];
  print(multiDimInts.length); //á multiDimInts
  print(multiDimInts[0].length); //fyrsta row
  print(multiDimInts[2].length); //seinasta row
  for(int i=0; i < multiDimInts.length; i++){
    for(int j=0; j < multiDimInts[i].length; j++){
      //print(multiDimInts[i][j]); //print all numbers
      //print(multiDimInts[1][1]); //print only number 5
      print("i: $i");
      if(i == 1){
        print("j: $j");
        if(j == 1){
          print(multiDimInts[i][j]); // print only 5
        }
      }
    }
  }
  // nota 2 for lykkjur til að prenta út númer 5
  // og líka allar tölur
  // for (int i = 0; i < 4; i++) {
  // finna length á array eða hardcoda lengdina

  List students = [["id: 123", "name: Hjalti", "course: NTV"],["id: 123", "name: Gunnar", "course: NTV"],["id: 123", "name: Barbie", "course: NTV"],["id: 123", "name: Ken", "course: NTV"]];
  //prenta út barbie í students
}