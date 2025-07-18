# Java-Login-System
Java Full-Stack Login &amp; Registration System using JSP, Servlets, and MySQL
# Java Full-Stack Login & Registration System

This is a simple full-stack web application built using **JSP**, **Servlets**, and **MySQL**. It allows users to register, log in, and log out securely using session management.

---

## 🔧 Technologies Used

- Java (Servlets & JSP)
- HTML/CSS
- MySQL (Database)
- JDBC (Java Database Connectivity)
- Apache Tomcat (Server)

---

## 📁 Project Structure

ProjectRoot/
│
├── index.jsp # Home page after successful login
├── login.jsp # Login form page
├── registration.jsp # Registration form page
│
├── login.java # Servlet for login authentication
├── logout.java # Servlet for logout logic
│
└── web.xml # Deployment descriptor (if used)

pgsql
Copy
Edit

---

## 🛠️ Setup Instructions

1. **Clone or Download the Project**

2. **Create MySQL Database**

```sql
CREATE DATABASE user;
USE user;

CREATE TABLE user (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(100) NOT NULL
);
Configure Database Connection in login.java

Update the following lines as per your system:

java
Copy
Edit
Connection con = DriverManager.getConnection(
    "jdbc:mysql://localhost:3306/user?characterEncoding=utf8&useUnicode=true", 
    "root", 
    "your_password"
);
Deploy to Apache Tomcat

Place the project folder in the webapps directory of Tomcat.

Start the Tomcat server.

Access via: http://localhost:8080/YourProjectName/login.jsp

🔐 Features
User Registration

Secure Login with Session Handling

Logout Functionality

Input Validation (basic via JSP)

📝 Notes
Ensure mysql-connector-java is in your lib folder or build path.

Basic password storage is implemented — for production, use encryption (e.g., BCrypt).

Session management is handled via HttpSession.

📸 Screenshots
(Optional: Add screenshots of registration, login, and homepage UI)

👨‍💻 Author
Developed by Narasimha SL.

📜 License
This project is open source and free to use for educational purposes.

yaml
Copy
Edit
