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

var peopleList = jsonDecode(json);
assert(peopleList is List, 'peopleList is not a List');
  
  //convert this json String into a List of Maps
  //call Students constructor, passing the List
  //call all methods once
}

//an array of key-val pairs,aka a list of maps

class Students {

  late List <Map <String, String> > people;

//constructor
  Student(List <Map <String, String> > people){
    this.people = people;
  }

  //sort method, based on field name that is passed
  void sort(String field){

  }

//method to loop and print each item in the list
  void output(){

  }

//method to add a new person to the list
  void plus(Map<String, String> person){

  }

//method to remove a person from the list
  void remove(String field){
//use removeWhere() method
  }


}


