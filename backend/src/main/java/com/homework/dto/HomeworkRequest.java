package com.homework.dto;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import java.time.LocalDateTime;

public class HomeworkRequest {
    
    @NotBlank(message = "Title is required")
    private String title;
    
    private String description;
    
    @NotBlank(message = "Subject is required")
    private String subject;
    
    @NotBlank(message = "Class grade is required")
    private String classGrade;
    
    @NotNull(message = "Due date is required")
    private LocalDateTime dueDate;
    
    // Getters and Setters
    
    public String getTitle() {
        return title;
    }
    
    public void setTitle(String title) {
        this.title = title;
    }
    
    public String getDescription() {
        return description;
    }
    
    public void setDescription(String description) {
        this.description = description;
    }
    
    public String getSubject() {
        return subject;
    }
    
    public void setSubject(String subject) {
        this.subject = subject;
    }
    
    public String getClassGrade() {
        return classGrade;
    }
    
    public void setClassGrade(String classGrade) {
        this.classGrade = classGrade;
    }
    
    public LocalDateTime getDueDate() {
        return dueDate;
    }
    
    public void setDueDate(LocalDateTime dueDate) {
        this.dueDate = dueDate;
    }
} 