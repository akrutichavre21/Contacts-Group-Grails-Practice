<%--
  Created by IntelliJ IDEA.
  User: akruti
  Date: 26/6/17
  Time: 11:14 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <asset:stylesheet src="mainPage.css"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</head>

<body class="view panel panel-default">
        <g:each in="${groupInstances}" var="group">
            <h1 style="color: #d9534f"><b>${group.name}</b></h1>
            <g:each in="${group.contacts}" var="mycontact">
               <h3 style="color: #006dba">
                <b>Name:</b> ${mycontact.firstName} ${mycontact.lastName},
                <b>Phone number:</b> ${mycontact.phone}
                   <br>
                   <br>
                   <g:link action="updateContact" class="btn btn-success" id="${mycontact.id}"><b> Update </b></g:link>
                   <g:link action="delete" class="btn btn-danger" id="${mycontact.id}"><b> Delete </b></g:link>
                <br>
                <br>
               </h3>
            </g:each>
        </g:each>
<br>
<a href="/contact/index" > Click here to return to the Main Page </a>
</body>
</html>