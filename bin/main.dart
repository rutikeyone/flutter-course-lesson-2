abstract class Worker {
  void work();
  void eat();
  void sleep();
  void code();
}

class Programmer implements Worker {
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

class Robot implements Worker {
  @override
  void work() {
    print("Working...");
  }

  @override
  void eat() {
    throw UnsupportedError("Robots don't eat!");
  }

  @override
  void sleep() {
    throw UnsupportedError("Robots don't sleep!");
  }

  @override
  void code() {
    print("Writing code...");
  }
}