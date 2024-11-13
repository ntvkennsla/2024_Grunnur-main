void main() {
  List<int> numbers = [2, 3, 4, 5, 6, 7, 8, 9, 10];

  Iterable<int> evenNumbers = numbers.where((num) => num.isEven);

  List evenlist = evenNumbers.toList();
  print(evenlist);

  //Find all numbers greater than 5
  Iterable<int> greaterThanFive = numbers.where((int num){
    return num > 5;
  });
  print(greaterThanFive);
}