package com.nwnu.dao;

import java.util.List;

import com.nwnu.pojo.Student;

/**
 * ѧ������
 * 
 * @author Administrator
 *
 */
public interface StudentDao {
	public List<Student> selectStudentList(Student student);

	public Integer insertStudent(Student student);

	public Integer selectStudentListCount(Student student);

}
