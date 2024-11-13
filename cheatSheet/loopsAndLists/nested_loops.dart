void main() {
  List<List<dynamic>> multiDimArray = [
    [1, 'apple', 3],
    [4, 'banana', 6],
    ['grape, 8, 9']
  ];

  print(multiDimArray[0][1]); //apple

  for (var row in multiDimArray) {
    for (var row2 in row) {}
  }

  List<List<dynamic>> multiDimInt = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
  ];

  dynamicListPrint(List list1) {
    for (int i = 0; i < list1.length; i++) {
      for (int j = 0; j < list1[i].length; j++) {
        if (i == 1) {
          if (j == 2) {
            print(multiDimInt[i][j]);
          }
        }
      }
    }
  }

  dynamicListPrint(multiDimInt);
  // print(multiDimInt[1][1]);

  List students = [
    ["id: 123", "name: Hjalti", "course: NTV"],
    ["id: 124", "name: ken", "course: NTV"],
    ["id: 123", "name: barbie", "course: NTV"]
  ];

  for(int i = 0; i < students.length; i++){
    for(int j = 0; j < students[i].length; j++){
      if(i == 2){
        if(j == 1){
          print(students[i][j]);
        }
      }
    }
  }
}
