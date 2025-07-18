
# Java Full-Stack Login & Registration System

This is a simple full-stack web application built using **JSP**, **Servlets**, and **MySQL**. It allows users to register, log in, and log out securely using session management.

##  Technologies Used

- Java (Servlets & JSP)
- HTML/CSS
- MySQL (Database)
- JDBC (Java Database Connectivity)
- Apache Tomcat (Server)
- Bootstrap



## Setup Instructions

 **Create MySQL Database**

sql
CREATE DATABASE user;<br>
USE user;<br>

CREATE TABLE user (<br>
    id INT AUTO_INCREMENT PRIMARY KEY,<br>
    username VARCHAR(50) NOT NULL UNIQUE,<br>
    password VARCHAR(100) NOT NULL<br>
    email    VARCHAR(10)<br>
    phno     VARCHAR(10)<br>
);<br><img width="607" height="324" alt="Screenshot from 2025-07-18 19-28-05" src="https://github.com/user-attachments/assets/0a2795f3-c602-4251-b025-1bdae3096deb" />



## Configure Database Connection in login.java

Update the following lines as per your system:<br>
Connection con = DriverManager.getConnection(<br>
    "jdbc:mysql://localhost:3306/user?characterEncoding=utf8&useUnicode=true", <br>
    "root", <br>
    "your_password"<br>
);<br>


##  Start the Tomcat server.

Access via: http://localhost:8080/YourProjectName/login.jsp

 ##  Features
User Registration

Secure Login with Session Handling

Logout Functionality

Input Validation (basic via JSP)

## Notes
Ensure mysql-connector-java is in your lib folder or build path.

Basic password storage is implemented — for production, use encryption (e.g., BCrypt).

Session management is handled via HttpSession.

## VIDEO 


https://github.com/user-attachments/assets/700badc5-4ab5-4466-9ef2-62dff4159882

