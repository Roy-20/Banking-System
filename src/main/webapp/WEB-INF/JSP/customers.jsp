<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
<style>
.styled-table {
    border-collapse: collapse;
    margin: 25px 0;
    font-size: 0.9em;
    font-family: sans-serif;
    width: 100%;
    height:auto;
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
}

.button {
    background-color: #4CAF50;
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
}
.styled-table thead tr {
    background-color: #009879;
    color: #ffffff;
    text-align: left;
}
.styled-table th,
.styled-table td {
    padding: 12px 15px;
}
.styled-table tbody tr {
    border-bottom: 1px solid #dddddd;
}

.styled-table tbody tr:nth-of-type(even) {
    background-color: #f3f3f3;
}

.styled-table tbody tr:last-of-type {
    border-bottom: 2px solid #009879;
}
.styled-table tbody tr.active-row {
    font-weight: bold;
    color: #009879;
}
</style>
<i class="fas fa-home"></i>
    <a href="/">
        <button class="button">Home</button>
    </a>
</head>
<table class="styled-table">
    <thead>
        <tr>
            <th>SL NO</th>
            <th>Name</th>
            <th>Email</th>
            <th>CurrentBalance</th>
            <th>Action</th>
        </tr>
    </thead>
    <tbody>

        <c:forEach var="data" items="${forms}">
                 <tr>

                <form:form action="/initiateTxn" method="post" modelAttribute="${transactionForm}">
                      <td>${data.serialNo}</td>
                      <td>${data.sender}</td>
                      <td>${data.senderEmail}</td>
                      <td>${data.currentBalance}</td>
                      <input type="hidden" name="email" value=${data.senderEmail}>
                      <td><input type="submit" value="TRANSACT"></td>
                </form:form>
                      </tr>

          </c:forEach>
    </tbody>
</table>
</html>