/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.cvbuilder.model;

/**
 *
 * @author USER
 */
public class CVBean {
   
    //Personal info
    private String name;
    private String professionalTitle;
    private String email;
    private String phoneNum;
    private String linkedln;
    private String profileSummary;
    
    //EDucation
    private String degree;
    private String institution;
    private String gradYear;
    private String major;
    
    //work experience
    private String jobTitle;
    private String company;
    private String duration;
    private String responsibilities;
    
    //skills
    private String technical;
    private String soft;
    
    //constructor
    public CVBean(){
    }
    
    //getter
    public String getName() {return name;}
    public String getProfessionalTitle() {return professionalTitle;}
    public String getEmail() {return email;}
    public String getPhoneNum() {return phoneNum;}
    public String getLinkedln() {return linkedln;}
    public String getProfileSummary() {return profileSummary;}
    public String getDegree() {return degree;}
    public String getInstitution() {return institution;}
    public String getGradYear() {return gradYear;}
    public String getMajor() {return major;}
    public String getJobTitle() {return jobTitle;}
    public String getCompany() {return company;}
    public String getDuration() {return duration;}
    public String getResponsibilities() {return responsibilities;}
    public String getTechnical() {return technical;}
    public String getSoft() {return soft;}
    
    //setter
    public void setName(String name) {this.name = name;}
    public void setProfessionalTitle(String professionalTitle) {this.professionalTitle = professionalTitle;}
    public void setEmail(String email) {this.email = email;}
    public void setPhoneNum(String phoneNum) {this.phoneNum = phoneNum;}
    public void setLinkedln(String linkedln) {this.linkedln = linkedln;}
    public void setProfileSummary(String profileSummary) {this.profileSummary = profileSummary;}
    public void setDegree(String degree) {this.degree = degree;}
    public void setInstitution(String institution) {this.institution = institution;}
    public void setGradYear(String gradYear) {this.gradYear = gradYear;}
    public void setMajor(String major) {this.major = major;}
    public void setJobTitle(String jobTitle) {this.jobTitle = jobTitle;}
    public void setCompany(String company) {this.company = company;}
    public void setDuration(String duration) {this.duration = duration;}
    public void setResponsibilities(String responsibilities) {this.responsibilities = responsibilities;}
    public void setTechnical(String technical) {this.technical = technical;}
    public void setSoft(String soft) {this.soft = soft;}
    
    public boolean validate(){
        String emailPattern = "^[A-Za-z0-9+_.-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}$";
        if(name == null || name.isEmpty()){
            return false;
        }else if(email == null|| email.isEmpty()){
            return false;
        }else if (!email.matches(emailPattern)) {
            return false;
        }else if(degree == null || degree.isEmpty()){
            return false;
        }else if((technical == null|| technical.isEmpty()) && 
                 (soft == null || soft.isEmpty())){
            return false;
        }
        else {
            return true;
        }
    }
}
