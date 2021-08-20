<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
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
</head>
<c:if test="${txnRes eq true}">
    <b><h2 style="color:green">Transaction Successful</h2></b>
</c:if>
<c:if test="${txnRes eq false}">
    <b><h2 style="color:red">Transaction Failed</h2></b>
</c:if>
<a href="/txnHistory">
    <button class="button">View transaction</button>
</a>
<a href="/">
    <button class="button">Back to Home</button>
</a>
</html>