abstract class Workable {
  void work();
}

abstract class Eatable {
  void eat();
}

abstract class Sleepable {
  void sleep();
}

abstract class Codable {
  void code();
}

class Programmer implements Workable, Eatable, Sleepable, Codable {
  @override
  void work() {
    print("Programming...");
  }

  @override
  void eat() {
    print("Eating...");
  }

  @override
  void sleep() {
    print("Sleeping...");
  }

  @override
  void code() {
    print("Writing code...");
  }
}

class Robot implements Workable, Codable {
  @override
  void work() {
    print("Working...");
  }

  @override
  void code() {
    print("Writing code...");
  }
}