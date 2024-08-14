package com.example.testing.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.testing.entity.StudentEntity;

public interface StudentRepository extends JpaRepository<StudentEntity, Integer> {

}
