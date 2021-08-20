<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <style>
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
    </a><br>
</head>
<a href="/userDetails">
    <button class="button">View Customers</button>
</a><br>
<a href="/txnHistory">
    <button class="button">View transaction</button>
</a>
