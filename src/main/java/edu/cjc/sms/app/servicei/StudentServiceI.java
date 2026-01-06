package edu.cjc.sms.app.servicei;

import java.util.List;

import edu.cjc.sms.app.model.Student;

public interface StudentServiceI {

 public void saveStudentData(Student s);
 
 public List<Student> getallStudents();

 public void deleteStudent(int rollno);

 public List<Student> getAllStudents();

 public List<Student> searchStudentByBatch(String batchNumber, String batchMode);

 public Student getSingleStudent(int studentId);

 public void payFees(int studentId, double ammount);

 public Student getforBatchShiftingStudent(int studentId);

 public void newbatchShift(int studentId, String batchNumber);

 

 

}
