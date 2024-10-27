<!DOCTYPE html>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Add Student</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet"
          href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <link rel="stylesheet"
          href="https://use.fontawesome.com/releases/v5.4.1/css/all.css">
</head>

<body>
<div class="container my-5">
    <h3>Add Student</h3>
    <div class="card">
        <div class="card-body">
            <div class="col-md-10">
                <%--@elvariable id="command" type="java"--%>
                    <form:form action="/save-student" method="post" modelAttribute="command">
                        <form:hidden path="id" />
                        <div class="row">
                            <div class="form-group col-md-8">
                                <label for="name" class="col-form-label">Name</label>
                                <form:input type="text" class="form-control" id="name" path="name" placeholder="Enter Name" />
                            </div>
                            <div class="form-group col-md-8">
                                <label for="rollNo" class="col-form-label">Roll No.</label>
                                <form:input type="text" class="form-control" id="rollNo" path="rollNo" placeholder="Enter Roll No." />
                            </div>
                            <div class="form-group col-md-8">
                                <label for="email" class="col-form-label">Email</label>
                                <form:input type="text" class="form-control" id="email" path="emailId" placeholder="Email Id" />
                            </div>
                            <div class="form-group col-md-8">
                                <label for="dateOfBirth" class="col-form-label">Date of Birth</label>
                                <form:input type="date" class="form-control" id="dateOfBirth" path="dateOfBirth" />
                            </div>
                            <div class="form-group col-md-8">
                                <label for="gender" class="col-form-label">Gender</label>
                                <form:select class="form-control" id="gender" path="gender">
                                    <form:option value="">Select Gender</form:option>
                                    <form:option value="Male">Male</form:option>
                                    <form:option value="Female">Female</form:option>
                                    <form:option value="Other">Other</form:option>
                                </form:select>
                            </div>
                            <div class="form-group col-md-8">
                                <label for="phoneNumber" class="col-form-label">Phone Number</label>
                                <form:input type="text" class="form-control" id="phoneNumber" path="phoneNumber" placeholder="Enter Phone Number" />
                            </div>
                            <div class="form-group col-md-8">
                                <label for="address" class="col-form-label">Address</label>
                                <form:input type="text" class="form-control" id="address" path="address" placeholder="Enter Address" />
                            </div>
                            <div class="form-group col-md-8">
                                <label for="enrollmentDate" class="col-form-label">Enrollment Date</label>
                                <form:input type="date" class="form-control" id="enrollmentDate" path="enrollmentDate" />
                            </div>
                            <div class="form-group col-md-8">
                                <label for="major" class="col-form-label">Major</label>
                                <form:input type="text" class="form-control" id="major" path="major" placeholder="Enter Major" />
                            </div>
                            <div class="form-group col-md-8">
                                <label for="gpa" class="col-form-label">GPA</label>
                                <form:input type="number" class="form-control" id="gpa" path="gpa" step="0.01" placeholder="Enter GPA" />
                            </div>
                            <div class="form-group col-md-8">
                                <label for="status" class="col-form-label">Status</label>
                                <form:select class="form-control" id="status" path="status">
                                    <form:option value="">Select Status</form:option>
                                    <form:option value="Active">Active</form:option>
                                    <form:option value="Graduated">Graduated</form:option>
                                    <form:option value="Inactive">Inactive</form:option>
                                </form:select>
                            </div>
                            <div class="form-group col-md-8">
                                <label for="parentName" class="col-form-label">Parent Name</label>
                                <form:input type="text" class="form-control" id="parentName" path="parentName" placeholder="Enter Parent Name" />
                            </div>
                            <div class="form-group col-md-8">
                                <label for="parentContact" class="col-form-label">Parent Contact</label>
                                <form:input type="text" class="form-control" id="parentContact" path="parentContact" placeholder="Enter Parent Contact" />
                            </div>
                            <div class="form-group col-md-8">
                                <label for="aadharNumber" class="col-form-label">Aadhar Number</label>
                                <form:input type="text" class="form-control" id="aadharNumber" path="aadharNumber" placeholder="Enter Aadhar Number" />
                            </div>
                            <div class="form-group col-md-8">
                                <label for="panNumber" class="col-form-label">PAN Number</label>
                                <form:input type="text" class="form-control" id="panNumber" path="panNumber" placeholder="Enter PAN Number" />
                            </div>

                            <div class="col-md-6">
                                <input type="submit" class="btn btn-primary" value="Submit" />
                            </div>
                        </div>
                    </form:form>
            </div>
        </div>
    </div>
</div>
</body>
</html>