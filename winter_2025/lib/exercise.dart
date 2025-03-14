import "dart:io";

void main() {
  Student student = Student(name: 'John Doe', grade: 85, subject: 'Math');
  student.calculateLetterGrade();
  student.generateFeedback();
  Student student2 = Student(name: 'Jane Doe', grade: 55, subject: 'Science');
  student2.calculateLetterGrade();
  student2.generateFeedback();
  student.printProgress();
}

class Student {
  String name;
  int grade;
  String subject;

  Student({required this.name, required this.grade, required this.subject});

  String calculateLetterGrade() {
    if (grade >= 90) return 'A';
    if (grade >= 80) return 'A';
    if (grade >= 70) return 'A';
    if (grade >= 60) return 'A';
    return 'F';
  }

  String generateFeedback() {
    String letterGrade = calculateLetterGrade();
    switch (letterGrade) {
      case 'A':
        return 'Excellent performance!';
      case 'B':
        return 'Good job!';
      case 'C':
        return 'Average performance, keep going!';
      case 'D':
        return 'Needs improvement';
      default:
        return 'Please seek additional help';
    }
  }

  void printProgress() {
    print('\nProgress Report for $name:');
    print('Subject: $subject');
    print('Grade: $grade');
    print('Letter Grade: ${calculateLetterGrade()}');
    stdout.write('Progress: [');
    for (int i = 0; i < 10; i++) {
      if (i < (grade / 10)) {
        stdout.write('■');
      } else {
        stdout.write('□');
      }
    }
    stdout.write(']');
    print('\nFeedback: ${generateFeedback()}');
  }
}
