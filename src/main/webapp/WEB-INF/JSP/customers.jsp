<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
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

        <c:forEach var="form" items="${forms}">
                 <tr>

                <form:form action="/transact" method="post" modelAttribute="${transactionForm}">
                      <td>${form.serialNo}</td>
                      <td>${form.sender}</td>
                      <td>${form.email}</td>
                      <td>${form.currentBalance}</td>
                      <form input type="hidden" name="email" value=${form.email}>
                      <td><input type="submit" value="TRANSACT"></td>
                </form:form>
                      </tr>

          </c:forEach>
    </tbody>
</table>
</html>