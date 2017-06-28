<%--
  Created by IntelliJ IDEA.
  User: akruti
  Date: 26/6/17
  Time: 8:23 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html xmlns="http://www.w3.org/1999/html">
<head>
    <title></title>
    <asset:stylesheet src="mainPage.css"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</head>

<body>
<form action="/contact/saveUpdate" class="option myColor">
    <h2>
        <input type="hidden" name="gName" value="${updateContacts[0].name}">
        <br>
        <label>Enter First Name </label> <input type="text" class="form-control" name="fname"  value="${updateContacts[1].firstName}" required>
        <br>
        <label>Enter Last Name </label> <input type="text" class="form-control" name="lname"  value="${updateContacts[1].lastName}" required>
        <br>
        <label>Enter Phone Number </label> <input type="number" class="form-control" name="pno" value="${updateContacts[1].phone}" required>
        <br>
        <input type="hidden" name="id" value="${updateContacts[1].id}">
        <input type="submit" class="btn btn-primary btn-block">
    </h2>
</form>
</body>
</html>