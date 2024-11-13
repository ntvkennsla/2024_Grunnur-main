import 'dart:io';
import "utilEmployee.dart";

// Main entry point of the program
void main() {
  // List of persons created
  List<Person> persons = [
    Person(name: "Gunnar Geir Helgason", JobTitle: "Kassastarfsmaður", id: 1, age: 35, companyID: 1),
    Person(name: "Guðgeir Unnar Gunnarsson", JobTitle: "Vaktsjóri", id: 2, age: 34, companyID: 2),
    Person(name: "Herdís Helga Helgadóttir", JobTitle: "HR", id: 3, age: 32, companyID: 1),
    Person(name: "Colt Lee", JobTitle: "Kassastarfsmaður", id: 4, age: 39, companyID: 3),
    Person(name: "Daniela Horne", JobTitle: "CEO", id: 5, age: 62, companyID: 1),
    Person(name: "Ivy Curry", JobTitle: "CTO", id: 6, age: 12, companyID: 3),
  ];
  // Print details of each person in the list
  for (Person tempPerson in persons) {
    print(tempPerson.toString());
  }
}

// Class representing a person with attributes like name, job title, etc.
class Person {
  String name;
  String JobTitle;
  int id;
  int age;
  int companyID;
  late String companyName;
  late String username;

  // Constructor for initializing a person object
  Person({
    required this.name,
    required this.JobTitle,
    required this.id,
    required this.age,
    required this.companyID
  }) {
    // Assign company name and username during object initialization
    companyName = _getCompanyName();
    username = _generateUserName(this.name);
  }

  // Method to get the company name based on companyID
  String _getCompanyName() {
    switch (companyID) {
      case 1:
        return "Bónus";
      case 2:
        return "Hagkaup";
      case 3:
        return "Olís";
      default:
        return "Unknown";
    }
  }

  // Override the toString method to print person details in a specific format
  @override
  String toString() {
    // Print the person details in a formatted box
    print("______________________________");
    print("| ID: ${this.id} |");
    print("| Nafn: ${this.name} |");
    print("| Jobtitle: ${this.JobTitle} |");
    print("| age: ${this.age} |");
    print("| companyName:${this.companyName} |");
    print("______________________________");

    // Return the default toString output (from Object class)
    return super.toString();
  }

// Function to generate a username from a person's name
  String _generateUserName(String tempName) {
    // Remove Icelandic letters from the name
    tempName = removeIcelandicLetters(tempName);

    // Convert the name to lowercase
    tempName = tempName.toLowerCase();

    // Split the name into a list of words
    List<String> tempListNames = tempName.split(" ");

    // Create a username using the first name and the first 3 letters of the last name
    String username = tempListNames.first + tempListNames.last.substring(0, 3);

    return username;
  }


}