import 'dart:io';

void main(List<String> arguments) {}

class School {
  String name;
  School(this.name);

  get getName => name;
  set setName(String name) => this.name = name;
}

class Human extends School {
  Human(String name, this.age, this.position) : super(name);
  int age;
  String position;
  get getAge => age;
  set setAge(int age) => this.age = age;
  get getPosition => position;
  set setPosition(String position) => this.position = position;
}

class Rooms extends School {
  Rooms(String name, this.windowsCounter, this.wallColer) : super(name);
  int windowsCounter;
  String wallColer;
  get getWindowsCounter => windowsCounter;
  set setWindowsCounter(int windowsCounter) =>
      this.windowsCounter = windowsCounter;
  get getWallColer => wallColer;
  set setWallColer(String wallColer) => this.wallColer = wallColer;
}

class MeetingRoom extends Rooms {
  MeetingRoom(String name, int windowsCounter, String wallColer)
      : super(name, windowsCounter, wallColer);
}

class ClassRoom extends Rooms {
  ClassRoom(String name, int windowsCounter, String wallColer)
      : super(name, windowsCounter, wallColer);
}

class TeacherRoom extends Rooms {
  TeacherRoom(String name, int windowsCounter, String wallColer)
      : super(name, windowsCounter, wallColer);
}

//Human
class Director extends Human {
  Director(String name, int age, String position, this.seleryDirector)
      : super(name, age, position);
  int seleryDirector;
  get getSeleryD => seleryDirector;
  set setSeleryD(int selery) => this.seleryDirector = selery;
}

class Teacher extends Human {
  Teacher(String name, int age, String position, this.seleryTeacher)
      : super(name, age, position);
  int seleryTeacher;
  get getSeleryT => seleryTeacher;
  set setSeleryT(int selery) => this.seleryTeacher = selery;
}

class Student extends Human {
  Student(
      String name, int age, String position, this.bookCounter, this.scholorShip)
      : super(name, age, position);
  int bookCounter;
  int scholorShip;

  get getBookC => bookCounter;
  set setBookC(int bookC) => this.bookCounter = bookC;

  get getSholorS => scholorShip;
  set setSholorS(int scholorShip) => this.scholorShip = scholorShip;
}

class Accountant extends Human with Budget {
  Accountant(String name, int age, String position)
      : super(name, age, position);
}
//Human finish

class Budget {}

// class Selery extends Budget {
//   Selery(String name) : super(name);
// }

// class ScholorShip extends Budget {
//   ScholorShip(String name) : super(name);
// }