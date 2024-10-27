<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.crudapp.Student" %> <!-- Adjust this import based on your actual package -->

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>All Students</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css">
</head>

<body>
<div class="container mt-4">
    <div class="d-flex justify-content-center mb-3">
        <a href="/add-student" class="btn btn-primary">
            <i class="fas fa-user-plus me-2"></i> Add Student
        </a>
    </div>

    <div class="col-lg-12 mx-auto">
        <%
            List<Student> students = (List<Student>) request.getAttribute("students"); // Fetch the list from the request
            if (students == null || students.isEmpty()) {
        %>
        <h2 class="text-center">No record found !!</h2>
        <%
        } else {
        %>
        <div class="table-responsive">
            <table class="table table-striped table-bordered text-center">
                <thead class="table-dark">
                <tr>
                    <th>Name</th>
                    <th>Roll No.</th>
                    <th>Email</th>
                    <th>Date of Birth</th>
                    <th>Gender</th>
                    <th>Phone Number</th>
                    <th>Address</th>
                    <th>Enrollment Date</th>
                    <th>Major</th>
                    <th>GPA</th>
                    <th>Status</th>
                    <th>Parent Name</th>
                    <th>Parent Contact</th>
                    <th>Aadhar Number</th>
                    <th>PAN Number</th>
                    <th>Edit</th>
                    <th>Delete</th>
                </tr>
                </thead>
                <tbody>
                <%
                    for (Student student : students) {
                %>
                <tr>
                    <td><%= student.getName() %></td>
                    <td><%= student.getRollNo() %></td>
                    <td><%= student.getEmailId() %></td>
                    <td><%= student.getDateOfBirth() != null ? student.getDateOfBirth().toString() : "N/A" %></td>
                    <td><%= student.getGender() != null ? student.getGender() : "N/A" %></td>
                    <td><%= student.getPhoneNumber() != null ? student.getPhoneNumber() : "N/A" %></td>
                    <td><%= student.getAddress() != null ? student.getAddress() : "N/A" %></td>
                    <td><%= student.getEnrollmentDate() != null ? student.getEnrollmentDate().toString() : "N/A" %></td>
                    <td><%= student.getMajor() != null ? student.getMajor() : "N/A" %></td>
                    <td><%= student.getGpa() != null ? student.getGpa() : "N/A" %></td>
                    <td><%= student.getStatus() != null ? student.getStatus() : "N/A" %></td>
                    <td><%= student.getParentName() != null ? student.getParentName() : "N/A" %></td>
                    <td><%= student.getParentContact() != null ? student.getParentContact() : "N/A" %></td>
                    <td><%= student.getAadharNumber() != null ? student.getAadharNumber() : "N/A" %></td>
                    <td><%= student.getPanNumber() != null ? student.getPanNumber() : "N/A" %></td>
                    <td>
                        <a href="/student-update/<%= student.getId() %>" class="btn btn-primary btn-sm">
                            <i class="fas fa-user-edit"></i>
                        </a>
                    </td>
                    <td>
                        <a href="/student-delete/<%= student.getId() %>" class="btn btn-danger btn-sm">
                            <i class="fas fa-user-times"></i>
                        </a>
                    </td>
                </tr>
                <%
                    }
                %>
                </tbody>
            </table>
        </div>
        <%
            }
        %>
    </div>
</div>
</body>

</html>
