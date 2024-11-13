void main(){

  int? getElementAtIndex(List<int> list , int index){
    try{
      return list[index];
    }
    catch(e){
      print("Index out of range $e");
      return null;
    }
    finally{

    }
  }
  int? num = getElementAtIndex([1,2,3,4,5,6,7], 9);
  print(num);

}