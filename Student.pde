import java.util.ArrayList;

class Student {

  String first;
  String last;
  int age;
  boolean isFemale;

  //Constructor that takes 4 parameters: String, int, int, boolean
  Student(String first, String last, int age, boolean isFemale) {
    this.first = first;
    this.last = last;
    this.age = age;
    this.isFemale = isFemale;
  }

  String getFirst() {
    return this.first;
  }
  String getLast() {
    return this.last;
  }
  int getAge() {
    return this.age;
  }
  boolean getIsFemale() {
    return this.isFemale;
  }
}



// Method to print out student info
void printStudentInfo(ArrayList<Student> students) {
  println("Student Info:");

  // Loop through the list of students and print out each student's info.
  for (Student student : students) {
    //If statement that checks the boolean value of getIsFemale() and give 2 different string answers depending on the boolean value
    String genderString;
    if (student.getIsFemale()) {
      genderString = "Female";
    } else {
      genderString = "Male";
    }
    println(student.getFirst() + " " + student.getLast() + " - " + student.getAge() + " - " + genderString);
  }
}

//Method to print out average age of all students
void printAverageAge(ArrayList<Student> students) {
  //Loops through the list of students and saves the value of "age" of each student into "sum"
  float sum = 0;
  for (Student student : students) {
    sum += student.getAge();
  }
  println("Average age of all students: ");
  println(sum / students.size());
}

//Method to print out average of all female students
void printAverageFemale(ArrayList<Student> students) {
  float sum = 0;
  float count = 0;
  //Loops through the list of students and checks if the student is male or female. If the student is a female the "age" of the student will be saved into "sum"
  for (Student student : students) {
    if (student.getIsFemale()) {
      sum += student.getAge();
      count++;
    }
  }
  println("Average age of all female students: ");
  println(sum / count);
}

//Method to print out average of all male students
void printAverageMale(ArrayList<Student> students) {
  float sum = 0;
  float count = 0;
  //Loops through the list of students and checks if the student is male or female. If the student is a male the "age" of the student will be saved into "sum"
  for (Student student : students) {
    if (!student.getIsFemale()) {
      sum += student.getAge();
      count++;
    }
  }
  println("Average age of all male students: ");
  println(sum / count);
}

//Method that prints out student emails
void printId(ArrayList<Student> students) {
  //Loops through the list of students and take the two first letter of the first name and two first letter of the last name and makes them uppercase.
  println("Student emails: ");
  for (Student student : students) {
    println(student.getFirst().substring(0, 2).toUpperCase() + student.getLast().substring(0, 2).toUpperCase() + "@CPHBUSINESS.dk");
  }
}

//Method that prints out eligible students for promotion
void licensePromotion(ArrayList<Student>students) {
  int legalAge = 18;
  int maxIndex = 25;
  println("Eligible students for promotion:");
  for (Student student : students) {

    //If statement with a boolean expression that determines if the student is female and between the age of 18 to 25
    if ( student.getAge() >= legalAge && student.getAge() < maxIndex && student.getIsFemale()) {
      println(student.getFirst() + " " + student.getLast());
    }
  }
}
