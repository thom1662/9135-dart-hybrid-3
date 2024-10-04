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

  var folks = Students(profs);
  folks.output();

  folks.sort('first');
  folks.output();

  folks.remove('first', 'Tony');
  folks.output();

  folks.plus({"first":"Stephanie", "last":"Teacher", "email":"steach@gmail.com"});
  folks.output();
}


class Students {

  late List <Map <String, String> > people;

//constructor
  Students(this.people);

//sort the list by a field, 3 ways
  void sort(String field){
    if (field == 'first'){
      people.sort((a,b) => a[field]!.compareTo(b[field]!)); //alphabetical
    }
    else if (field == 'last'){
      people.sort((a,b) => a[field]!.length.compareTo(b[field]!.length)); //length of last name
    }
    else if (field == 'email') {
      people.sort((a,b) => b[field]!.compareTo(a[field]!)); //reverse alphabetical
    }
  }

//loop and print each item in the list
  void output(){
    for (var person in people){
      print(person);
    }
    print('\n');
  }

//add a new person to the list
  void plus(Map<String, String> person){
    people.add(person);
  }

//remove a person from the list
  void remove(String field, String value){ //needed to pass the key and value
    people.removeWhere((person) => person[field] == value);
  }

}


