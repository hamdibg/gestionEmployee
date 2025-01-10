package com.employeemanagement.servlet;

import com.employeemanagement.dao.EmployeeDAO;
import com.employeemanagement.model.Employee;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.math.BigDecimal;
import java.sql.SQLException;

@WebServlet("/editEmployee")
public class EditEmployeeServlet extends HttpServlet {
    private EmployeeDAO employeeDAO = new EmployeeDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        try {
            Employee employee = employeeDAO.getEmployeeById(id);
            request.setAttribute("employee", employee);
            request.getRequestDispatcher("/WEB-INF/views/editEmployee.jsp")
                    .forward(request, response);
        } catch (SQLException e) {
            throw new ServletException(e);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String department = request.getParameter("department");
        BigDecimal salary = new BigDecimal(request.getParameter("salary"));

        Employee employee = new Employee(id, name, department, salary);
        try {
            employeeDAO.updateEmployee(employee);
            response.sendRedirect("listEmployees");
        } catch (SQLException e) {
            throw new ServletException(e);
        }
    }
}