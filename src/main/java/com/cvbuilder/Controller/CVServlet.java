/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.cvbuilder.Controller;

import com.cvbuilder.model.CVBean;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 *
 * @author USER
 */
public class CVServlet extends HttpServlet{
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {

        // Create CVBean object
        CVBean cvBean = new CVBean();

        // Get personal information
        cvBean.setName(request.getParameter("name"));
        cvBean.setProfessionalTitle(request.getParameter("professionalTitle"));
        cvBean.setEmail(request.getParameter("email"));
        cvBean.setPhoneNum(request.getParameter("phoneNum"));
        cvBean.setLinkedln(request.getParameter("linkedin"));
        cvBean.setProfileSummary(request.getParameter("profileSummary"));

        // Get education information
        cvBean.setDegree(request.getParameter("degree"));
        cvBean.setInstitution(request.getParameter("institution"));
        cvBean.setGradYear(request.getParameter("gradYear"));
        cvBean.setMajor(request.getParameter("major"));

        // Get work experience
        cvBean.setJobTitle(request.getParameter("jobTitle"));
        cvBean.setCompany(request.getParameter("company"));
        cvBean.setDuration(request.getParameter("duration"));
        cvBean.setResponsibilities(request.getParameter("responsibilities"));

        // Get skills
        cvBean.setTechnical(request.getParameter("technical"));
        cvBean.setSoft(request.getParameter("soft"));

        // Validate CV data
        if (cvBean.validate()) {

            request.setAttribute("cvData", cvBean);

            request.getRequestDispatcher("cvView.jsp")
                   .forward(request, response);

        } else {

            request.setAttribute("errorMessage",
                    "Please fill in all mandatory fields correctly.");

            request.getRequestDispatcher("cvError.jsp")
                   .forward(request, response);
        }
    }
        
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {

        String action = request.getParameter("action");

        if ("sample".equals(action)) {

            CVBean cvBean = new CVBean();

            // Personal Information
            cvBean.setName("Aiman Hakim");
            cvBean.setProfessionalTitle("Software Developer");
            cvBean.setEmail("aiman@gmail.com");
            cvBean.setPhoneNum("0123456789");
            cvBean.setLinkedln("https://linkedin.com/in/aimanhakim");
            cvBean.setProfileSummary("A motivated software developer.");

            // Education
            cvBean.setDegree("Bachelor of Computer Science");
            cvBean.setInstitution("Universiti Teknologi MARA");
            cvBean.setGradYear("2026");
            cvBean.setMajor("Computer Science");

            // Work Experience
            cvBean.setJobTitle("Junior Web Developer");
            cvBean.setCompany("ABC Technology Sdn. Bhd.");
            cvBean.setDuration("2025 - 2026");
            cvBean.setResponsibilities("Developed web applications.");

            // Skills
            cvBean.setTechnical("Java, HTML, CSS, MySQL");
            cvBean.setSoft("Communication, Teamwork, Problem Solving");

            request.setAttribute("cvData", cvBean);

            request.getRequestDispatcher("/cvView.jsp")
                    .forward(request, response);
        }
    }

}
