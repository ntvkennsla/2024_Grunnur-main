

// Function to replace Icelandic letters with their ASCII equivalents
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
