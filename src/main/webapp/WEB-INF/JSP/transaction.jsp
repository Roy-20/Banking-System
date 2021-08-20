<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
    </style>
    <a href="/">
        <button class="button">Banking System</button>
    </a>
</head>
<div>
    <form:form action="/transact" method="post" modelAttribute="txnForm">

    <table class="styled-table">
    <thead>
    <tr>
        <th>SL NO</th>
        <th>Name</th>
        <th>Email</th>
        <th>CurrentBalance</th>
    </tr>
    </thead>
    <tbody>
        <tr>
                <td>${txnForm.serialNo}</td>
                <td>${txnForm.sender}</td>
                <td><form:input path="senderEmail" readonly="true"></form:input></td>
                <td>${txnForm.currentBalance}</td>
        </tr>
    </tbody>
    </table>
        <div>
         <b><p>Beneficiary Details:</p></b>
            <form:select path="receiver">
                <c:forEach var="data" items="${users}">
                    <form:option value="${data}" label="${data}"/>
                </c:forEach>
            </form:select>
            <form:input type="text" path="amount" id="amount" name="amount" placeholder="Enter Amount to Send"></form:input>
            <input type="submit" value="PROCEED">
        </div>
    </form:form>
</div>
</html>