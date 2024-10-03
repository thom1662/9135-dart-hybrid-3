import 'dart:convert';

void main(List<String> args) {

  String json = '''
[
  {"first":"Steve", "last":"Griffith", "email":"griffis@algonquincollege.com"},
  {"first":"Adesh", "last":"Shah", "email":"shaha@algonquincollege.com"},
  {"first":"Tony", "last":"Davidson", "email":"davidst@algonquincollege.com"},
  {"first":"Adam", "last":"Robillard", "email":"robilla@algonquincollege.com"}
]

''';


//jsondecode returns list <Dynamic>
var profs = (jsonDecode(json) as List)
  .map((item) => (item as Map<String, dynamic>)
  .map((key, value) => MapEntry(key, value.toString()))) //change values to string
  .toList();

  //assert(profs is List<Map<String, String>>);
  //var personOne = profs[0];
  //print(personOne);


  //call Students constructor, passing the List
  var folks = Students(profs);
  folks.output();
  //call all methods once
}


class Students {

  late List <Map <String, String> > people;

//constructor
  Students(this.people);

  //sort method, based on field name that is passed
  void sort(String field){

  }

//method to loop and print each item in the list
  void output(){
    for (var person in people){
      print(person);
    }
  }

//method to add a new person to the list
  void plus(Map<String, String> person){

  }

//method to remove a person from the list
  void remove(String field){
//use removeWhere() method
  }


}


