package com.example.crudapp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StudentServiceImpl implements StudentService {
    @Autowired
    private StudentRepository studentRepository;

    @Override
    public void save(Student student) {
        if (student.getId() == null) {
            studentRepository.save(student);
        } else {
            Student staffUpdate = studentRepository.findById(Long.valueOf(student.getId())).get();
            staffUpdate.setName(student.getName());
            staffUpdate.setRollNo(student.getRollNo());
            staffUpdate.setEmailId(student.getEmailId());
            studentRepository.save(staffUpdate);
        }
    }

    @Override
    public List<Student> getAll() {
        return studentRepository.findAll();
    }

    @Override
    public Student getById(Integer id) {
        return studentRepository.findById(Long.valueOf(id)).get();

    }

    @Override
    public void delete(Student student) {
        studentRepository.delete(student);
    }
}
