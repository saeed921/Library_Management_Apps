class Note {
  int id;
  String title;
  String? description;
  String date;
  int priority;

  Note({
    required this.id,
    required this.title,
    this.description,
    required this.date,
    required this.priority
  });
}
