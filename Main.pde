import java.util.ArrayList;

void setup(){

ArrayList<Student> students = new ArrayList<>();


students.add(new Student("Alex", "Perreira", 20, false));
students.add(new Student("Jon", "Jones", 17, false));
students.add(new Student("Holly", "Holmes", 24, true));
students.add(new Student("Brandon", "Moreno", 18, false));
students.add(new Student("Miesha", "Tate", 27, true));
students.add(new Student("Alexa", "Grassoo", 15, true));
students.add(new Student("Paul", "Craig", 22, false));
students.add(new Student("Rondey", "Rousso", 19, true));
students.add(new Student("Valentina", "Schevchenko", 21, true));
students.add(new Student("Tom", "Aspinal", 26, false));


printStudentInfo(students);
println();
println();
printAverageAge(students);
println();
println();
printAverageFemale(students);
println();
println();
printAverageMale(students);
println();
println();
printId(students);
println();
println();
licensePromotion(students);
}
