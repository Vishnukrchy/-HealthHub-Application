# HealthHub - Hospital Management System

HealthHub is a comprehensive Hospital Management System designed to streamline hospital operations and enhance patient care.

## Functionality

- **User Registration and Authentication**: Seamless registration process for patients and staff. Secure login and role-based access control using Java Servlet + JSP.
- **Appointment Management**: Easy scheduling with automated reminders and comprehensive appointment history tracking.
- **Patient Management**: Detailed patient records, medical history, treatment plans, and efficient search functionality.
- **Doctor and Staff Management**: Robust profiles and effective scheduling to ensure optimal coverage.
- **Medical Records**: Electronic Health Records (EHR), integrated lab results, and prescription management.
- **Billing and Payment**: Automated invoicing, secure payment processing, and streamlined insurance claims management.
- **Responsive Interface**: Implemented using Bootstrap for a seamless user experience across devices.
- **AI Integration**: Utilizes GPT-4 for advanced natural language processing in documentation and communication.

## Tools Used

- **Backend**: Java, Servlet + JSP, JDBC, Maven
- **Database**: MySQL
- **Frontend**: HTML, CSS, JavaScript, Bootstrap
-  **GPT-4**: Used for writing documentation and readme files.

## Directory Structure

```
HospitalManagementSystem/
├── src/
│   ├── main/
│   │   └── java/
│   │       └── com/
│   │           └── vishnu/
│   │               └── hospital/
│   │                   ├── controllers/
│   │                   │   ├── AppointmentController.java
│   │                   │   ├── PatientController.java
│   │                   │   └── StaffController.java
│   │                   ├── models/
│   │                   │   ├── Appointment.java
│   │                   │   ├── Patient.java
│   │                   │   └── Staff.java
│   │                   ├── services/
│   │                   │   ├── AppointmentService.java
│   │                   │   ├── PatientService.java
│   │                   │   └── StaffService.java
│   │                   └── Main.java
│   ├── test/
│   │   └── java/
│   │       └── com/
│   │           └── vishnu/
│   │               └── hospital/
│   │                   ├── AppointmentTest.java
│   │                   ├── PatientTest.java
│   │                   └── StaffTest.java
├── data/
│   └── README.md
└── pom.xml
```

