package com.websystique.springmvc.controller;

/**
 * Created by ali on 1/14/17.
 */

import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
/*
import com.websystique.springmvc.dao.PhotoUploadDAO;*/
import com.websystique.springmvc.model.Photo_Upload;
import org.hibernate.annotations.SourceType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.websystique.springmvc.model.Employee;
import com.websystique.springmvc.service.EmployeeService;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

@Controller
public class AppController {
    @Autowired
    EmployeeService service;
    @Autowired
    MessageSource messageSource;
   /* @Autowired
    PhotoUploadDAO photoUploadDAO;*/


    /*
     * This method will list all existing employees.
     */
    @RequestMapping(value = {"/", "/list"}, method = RequestMethod.GET)
    public String listEmployees(ModelMap model) {
        List<Employee> employees = service.findAllEmployees();
        model.addAttribute("employees", employees);
        return "allemployees";
    }

    /*
     * This method will provide the medium to add a new employee.
     */
    @RequestMapping(value = {"/new"}, method = RequestMethod.GET)
    public String newEmployee(ModelMap model) {
        Employee employee = new Employee();
        model.addAttribute("employee", employee);
        model.addAttribute("edit", false);
        return "registration";
    }

    /*
     * This method will be called on form submission, handling POST request for
     * saving employee in database. It also validates the user input
     */
    @RequestMapping(value = {"/new"}, method = RequestMethod.POST)
    public String saveEmployee(@Valid Employee employee, BindingResult result,
                               ModelMap model) {

        if (result.hasErrors()) {
            return "registration";
        }
        /*
         * Preferred way to achieve uniqueness of field [ssn] should be implementing custom @Unique annotation
         * and applying it on field [ssn] of Model class [Employee].
         *
         * Below mentioned peace of code [if block] is to demonstrate that you can fill custom errors outside the validation
         * framework as well while still using internationalized messages.
         *
         */
        if (!service.isEmployeeSsnUnique(employee.getId(), employee.getSsn())) {
            FieldError ssnError = new FieldError("employee", "ssn", messageSource.getMessage("non.unique.ssn", new String[]{employee.getSsn()}, Locale.getDefault()));
            result.addError(ssnError);
            return "registration";
        }

        service.saveEmployee(employee);

        model.addAttribute("success", "Employee " + employee.getName() + " registered successfully");
        return "success";
    }


    /*
     * This method will provide the medium to update an existing employee.
     */
    @RequestMapping(value = {"/edit-{ssn}-employee"}, method = RequestMethod.GET)
    public String editEmployee(@PathVariable String ssn, ModelMap model) {
        Employee employee = service.findEmployeeBySsn(ssn);
        model.addAttribute("employee", employee);
        model.addAttribute("edit", true);
        return "registration";
    }

    /*
     * This method will be called on form submission, handling POST request for
     * updating employee in database. It also validates the user input
     */
    @RequestMapping(value = {"/edit-{ssn}-employee"}, method = RequestMethod.POST)
    public String updateEmployee(@Valid Employee employee, BindingResult result,
                                 ModelMap model, @PathVariable String ssn) {

        if (result.hasErrors()) {
            return "registration";
        }

        if (!service.isEmployeeSsnUnique(employee.getId(), employee.getSsn())) {
            FieldError ssnError = new FieldError("employee", "ssn", messageSource.getMessage("non.unique.ssn", new String[]{employee.getSsn()}, Locale.getDefault()));
            result.addError(ssnError);
            return "registration";
        }

        service.updateEmployee(employee);

        model.addAttribute("success", "Employee " + employee.getName() + " updated successfully");
        return "success";
    }


    /*
     * This method will delete an employee by it's SSN value.
     */
    @RequestMapping(value = {"/delete-{ssn}-employee"}, method = RequestMethod.GET)
    public String deleteEmployee(@PathVariable String ssn) {
        service.deleteEmployeeBySsn(ssn);
        return "redirect:/list";
    }

    @RequestMapping(value = "/beginner", method = RequestMethod.GET)
    public String listAllLessons(ModelMap model) {
        return "beginner";
    }


    @RequestMapping(value = "/photoUpload", method = RequestMethod.GET)
    public String showPhotoUploadForm() {
        return "photoUpload";
    }

  /*  @RequestMapping(value = "/doUpload", method = RequestMethod.POST)
    public String handleUploadFile(@RequestParam CommonsMultipartFile[] photoUpload) {
        if (photoUpload != null && photoUpload.length > 0) {
            for (CommonsMultipartFile multipartFile : photoUpload) {
                System.out.println("Saving file: " + multipartFile.getOriginalFilename());
                Photo_Upload photo_upload = new Photo_Upload();
                photo_upload.setPhotoName(multipartFile.getOriginalFilename());
                photo_upload.setData(multipartFile.getBytes());
                photoUploadDAO.save(photo_upload);
            }
        }
        return "photoUpload";
    }*/

}



