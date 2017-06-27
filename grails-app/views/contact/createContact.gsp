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
    <form action="saveContact" class="option myColor">
        <h2>
        <label>Enter Group Name </label>
            <br>
            %{--<input type="text" class="form-control" name="gName" required>--}%
            <select name="gName">
                <g:each in="${groupInstance}">
                    <option value="${it.name}">${it.name}</option>
                </g:each>
            </select>
            <br>
            <br>
        <label>Enter First Name </label> <input type="text" class="form-control" name="fname" required>
            <br>
        <label>Enter Last Name </label> <input type="text" class="form-control" name="lname" required>
            <br>
        <label>Enter Phone Number </label> <input type="number" class="form-control" name="pno" required>
            <br>
        <input type="submit" class="btn btn-primary btn-block">
        </h2>
    </form>
</body>
</html>