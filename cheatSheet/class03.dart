import 'dart:io';

void main(List<String> arguments) {
  /*
  int age = 19;
  if (age > 19) {
    print("Cheers!");
  } else {
    print("Fáðu þér vatn ungi maður.");
  }

  int personAge = 78;
  bool hasLicense = false;
  print("Velkominn til sýrslumanns, þú þarf að vera orðin 17 til þess að fá bílpróf");
  print("Herra X er $personAge gamall");
  if (personAge >= 17 && hasLicense == true) {
    print("Gjörðu svo vel kútur farðu að keyra.");
  } else {
    if(personAge <= 17) {
      print("Afskaið þú ert ekki nógu gamall til þess að fá bílpróf");
    } else {
      print("Þú ert ekki með bílpróf");
    }
  }
   */

  print("Enter your SSN:");
  String socialSecurityNumber1 = stdin.readLineSync().toString();
  print("You entered: $socialSecurityNumber1");
  socialSecurityNumber1 = fixSSN(socialSecurityNumber1);
  if (socialSecurityNumber1.length == 10) {
    print("SSN: $socialSecurityNumber1");
  } else {
    print("To short.");
  }
  /*if (countDigets(socialSecurityNumber1) == 0) {
    print("This SSN $socialSecurityNumber1 looks ok");
  } else if (countDigets(socialSecurityNumber1) >= 1) {
    print("$socialSecurityNumber1 er of stutt ssn");
  } else if(countDigets(socialSecurityNumber1) <= -1) {
    socialSecurityNumber1 = fixSSN(socialSecurityNumber1);
    print("$socialSecurityNumber1");
  }*/

}

int countDigets(String ssn) {
  int socialSecurityNumberLength = 10;
  return socialSecurityNumberLength - ssn.length;
}
String fixSSN(String brokenSSN) {
  if (brokenSSN.contains(" ")) {
    brokenSSN = brokenSSN.replaceAll(" ", "");
  }
  if (brokenSSN.contains("-")) {
    brokenSSN = brokenSSN.replaceAll("-", "");
  }
  return brokenSSN;
}