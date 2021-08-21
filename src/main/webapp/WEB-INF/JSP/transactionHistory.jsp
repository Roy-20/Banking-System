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
                        background-color: black;
                        color: azure;
                        cursor: pointer;
                        width: 8rem;
                        height: 3rem;
                        border-radius: 8px;
                        font-size: 1rem;
                        font-family: inherit;
                }
        .button:hover{
                    background-color: rgb(49, 44, 44);
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
        <th>Sender</th>
        <th>Receiver</th>
        <th>Amount</th>
        <th>Date</th>
    </tr>
    </thead>
    <tbody>

    <c:forEach var="data" items="${transactions}">
        <tr>
                <td>${data.serialNo}</td>
                <td>${data.sender}</td>
                <td>${data.receiver}</td>
                <td>${data.amount}</td>
                <td>${data.date}</td>
        </tr>

    </c:forEach>
    </tbody>
</table>
</html>