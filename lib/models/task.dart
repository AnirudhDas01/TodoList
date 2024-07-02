class Task {
  Task({required this.title, required this.isDone});

  String title;
  bool isDone = false;

  void toggleDOne() {
    isDone = !isDone;
  }
}
