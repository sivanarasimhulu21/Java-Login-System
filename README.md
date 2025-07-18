
# Java Full-Stack Login & Registration System

This is a simple full-stack web application built using **JSP**, **Servlets**, and **MySQL**. It allows users to register, log in, and log out securely using session management.

##  Technologies Used

- Java (Servlets & JSP)
- HTML/CSS
- MySQL (Database)
- JDBC (Java Database Connectivity)
- Apache Tomcat (Server)



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
);<br>
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

## VIDEO and Photo


## 👨‍💻 Author
Developed by Narasimha SL.

📜 License
This project is open source and free to use for educational purposes.

yaml
Copy
Edit
