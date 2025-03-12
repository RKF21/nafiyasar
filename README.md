Employee Management System
This Employee Management System is a web-based application that helps manage employee data, projects, and related functionalities. It is built using PHP, HTML, CSS, Bootstrap, and JavaScript, with MySQL as the database (using XAMPP).

Table of Contents
Overview
Features
Technologies Used
File & Folder Structure
Installation
Usage
Contact

Overview : 
Purpose: Streamline employee management tasks such as adding employees, assigning projects, tracking attendance, handling leaves, and managing salaries.
Audience: HR departments, small to medium-sized businesses, or anyone interested in a simple employee management tool.

Features :
User Authentication
Separate login pages for admin and employees.
Secure password handling (change password, reset options).

Admin Functionalities:

Add, edit, and remove employees (addemp.php, delete.php, etc.).
Assign projects and tasks (assignproject.php).
View and manage employee profiles (viewemp.php).

Employee Functionalities :

View personal profile (myprofile.php, myprofileup.php).
Submit or update project details (empproject.php, psubmit.php).
Change password (changepassemp.php).

Additional Pages:

About Us page (aboutus.html).
Reset password page (reset.php).
Project assignment, attendance marking (mark.php), and more.

Technologies Used :
Backend: PHP (Procedural)
Frontend: HTML5, CSS3, Bootstrap, JavaScript
Database: MySQL (Accessed via XAMPP)
Server Environment: XAMPP (Apache, MySQL)

File & Folder Structure: 
Employee_Management/
├── assets/
│   ├── admin.png
│   ├── apple.jpg
│   └── avatar.png
├── css/
│   └── main.css
├── js/
│   └── (Your JavaScript files, if any)
├── process/
│   └── (Server-side processing files, if any)
├── 370project.sql
├── Table Creation SQL Code.sql
├── aboutus.html
├── addemp.php
├── aloin.html
├── analyticstyle.css
├── arman.js
├── assign.php
├── assignproject.php
├── chair.jpg
├── changepassemp.php
├── delete.php
├── elogin.html
├── eloginwel.php
├── empproject.php
├── H1-6.jpg
├── index.html
├── Killian-Dome-Emily-D.jpg
├── mark.php
├── myprofile.php
├── myprofileup.php
├── nihal.png
├── officeroomluxury.jpg
├── orange.jpg
├── pilar.jpg
├── ping.webp
├── psubmit.php
├── README.md
├── reset.php
├── style.css
├── styleapply.css
├── styleemplogin.css
├── styleindex.css
├── stylelogin.css
├── styleprofile.css
├── tata.png
└── viewemp.php

Installation :
Download & Install XAMPP

Ensure Apache and MySQL are running in the XAMPP Control Panel.
Clone or Download this Repository

Click on the green "Code" button (GitHub) and download the ZIP or run:
git clone https://github.com/RKF21/Employee_Management.git
Move Project to XAMPP's htdocs Folder

Place the entire Employee_Management folder into C:\xampp\htdocs (Windows) or /opt/lampp/htdocs (Linux/Mac).
Create the Database

Open your browser and go to:
http://localhost/phpmyadmin
Create a new database (e.g., employee_management).
Import the SQL File

In phpMyAdmin, select your new database.
Click Import.
Choose either 370project.sql or Table Creation SQL Code.sql (depending on which contains the full schema/data).
Click Go to import the tables.
Check Configuration (If Needed)

If there is a separate config file (e.g., db_connect.php), ensure the database name, username, and password match your local setup.
By default in XAMPP, username is often root with an empty password.
Usage
Start the Server

In XAMPP, click Start for both Apache and MySQL.
Open the Application

In your web browser, go to:
http://localhost/Employee_Management/
You can also navigate to specific pages such as index.html, aloin.html, or elogin.html directly.
Log In

Admin Login: Use the admin credentials you have set in the database (or in the aloin.html flow).
Employee Login: Use the employee credentials for elogin.html.
Explore Functionalities

Admin:
Add employees (addemp.php)
Assign projects (assignproject.php)
View or delete employees (viewemp.php, delete.php)
Employee:
Update profile (myprofile.php, myprofileup.php)
Submit projects (empproject.php, psubmit.php)
Change password (changepassemp.php)
Additional Pages

aboutus.html to learn more about the system or the organization.
reset.php to reset password if implemented.
Various CSS files for styling (e.g., style.css, stylelogin.css).
Contact
If you have any questions, issues, or suggestions regarding this Employee Management System, please open an issue on this repository or reach out to the maintainer through GitHub.
