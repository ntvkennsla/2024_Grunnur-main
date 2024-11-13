void main() {
  List<String> names = ["Gunnar Ægir Þorleifsson",
    "Guðgeir Unnar Gunnarsson",
    "Herdís Helga Helgadóttir",
    "Guðmundur Þorsteinsson"];
  List<String> fixedNames = [];
  for (int i = 0; names.length > i; i++) {
    String tempName = removeIcelandicLetters(names[i]);
    tempName = tempName.toLowerCase();
    List<String> tempListNames = tempName.split(" ");
    String username = tempListNames.first + tempListNames.last.substring(0, 3);
    fixedNames.add(username);
  }

  for (String names in fixedNames) {
    print(names);
  }
}
String removeIcelandicLetters(String input) {
  // Define a map to replace Icelandic characters with their ASCII equivalents
  Map<String, String> icelandicMap = {
    'á': 'a',
    'é': 'e',
    'í': 'i',
    'ó': 'o',
    'ú': 'u',
    'ý': 'y',
    'þ': 'th',
    'æ': 'ae',
    'ö': 'o',
    'ð': 'd',
    'Á': 'A',
    'É': 'E',
    'Í': 'I',
    'Ó': 'O',
    'Ú': 'U',
    'Ý': 'Y',
    'Þ': 'Th',
    'Æ': 'Ae',
    'Ö': 'O',
    'Ð': 'D',
  };

  // Iterate through the string and replace Icelandic characters
  for (var entry in icelandicMap.entries) {
    input = input.replaceAll(entry.key, entry.value);
  }

  return input;
}