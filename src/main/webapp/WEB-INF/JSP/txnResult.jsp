<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<html>
<head>
    <style>
        .button {
                        background-color: black;
                        color: azure;
                        cursor: pointer;
                        width: 8rem;
                        height: 3rem;
                        border-radius: 8px;

                        font-family: inherit;
                }
        .button:hover{
                    background-color: rgb(49, 44, 44);
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