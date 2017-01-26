package com.websystique.springmvc.dao;

/**
 * Created by ali on 1/14/17.
 */
import java.util.List;

import com.websystique.springmvc.model.Employee;

public interface EmployeeDao {

    Employee findById(int id);

    void saveEmployee(Employee employee);

    void deleteEmployeeBySsn(String ssn);

    List<Employee> findAllEmployees();

    Employee findEmployeeBySsn(String ssn);

}