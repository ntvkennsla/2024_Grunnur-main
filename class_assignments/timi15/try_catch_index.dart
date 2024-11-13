void main() {
  int? getElementAtIndex(List<int> list, int index){
    try{
      return list[index];
    }
    catch(e){
      print('index out of range $e');
      return null;
    }
  }
print(getElementAtIndex([1, 2, 3, 4, 5, 6, 7], 8));

}


