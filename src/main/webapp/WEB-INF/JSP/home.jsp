<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <style>
        #home::before{
            content: "";
            position: absolute;
            height: 100vh;
            width: 100%;
            background: url('./Bank.jpg') no-repeat center center/cover;
            opacity: 0.7;
            z-index: -1;
        }
        .button {
                background-color: black;
                color: azure;
                margin-top: 19rem;
                margin-left: 34rem;
                cursor: pointer;
                width: 8rem;
                height: 3rem;
                border-radius: 8px;
                font-family: cursive;
        }
        #button{
            background-color: black;
                color: azure;
                margin-left: 1rem;
                cursor: pointer;
                width: 8rem;
                height: 3rem;
                border-radius: 8px;
                font-family: cursive;
        }
        .button:hover,#button:hover{
            background-color: rgb(49, 44, 44);
            font-weight: bold;
        }
    </style>

</head>
<section id="Home">
<a href="/userDetails">
    <button class="button">View Customers</button>
</a>
<a href="/txnHistory">
    <button id="button">View transaction</button>
</a>
</section>
