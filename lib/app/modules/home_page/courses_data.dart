class Course {
  static final courses = [
    Course(
      title: 'Github',
      image: 'assets/images/github.png',
      time: '23 H 17 M',
      description: 'Beginner course focused on Dart basics.',
    ),
    Course(
      title: 'Clean UI Course',
      image: 'assets/images/ui.png',
      time: '18 H 29 M',
      description: 'Create beautiful user interfaces.',
    ),
    Course(
      title: 'Dart for Beginners',
      image: 'assets/images/dart_course.png',
      time: '23 H 17 M',
      description: 'Beginner course focused on Dart basics.',
    ),
    Course(
      title: 'Clean UI Course',
      image: 'assets/images/ui.png',
      time: '18 H 29 M',
      description: 'Create beautiful user interfaces.',
    ),
  ];
  final String title;
  final String image;
  final String time;
  final String description;

  Course({
    required this.title,
    required this.image,
    required this.time,
    required this.description,
  });
}
