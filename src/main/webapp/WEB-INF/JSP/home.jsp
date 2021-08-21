<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <style>
        img{
            content: "";
            position: absolute;
            height: 98vh;
            width: 99%;
            opacity: 0.7;
            z-index: -1;
        }
        .button {
                background-color: black;
                color: azure;
                margin-top: 19rem;
                margin-left: 32rem;
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
        h2{
            position:absolute;
            margin: 1rem 25rem;
            font-family: cursive;
        }
    </style>

</head>
<body>
<h2>|| WELCOME TO GRIP BANKING SYSTEM ||</h2>
<img src='https://images.unsplash.com/photo-1501167786227-4cba60f6d58f?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YmFua3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80'>
<a href="/userDetails">
    <button class="button">View Customers</button>
</a>
<a href="/txnHistory">
    <button id="button">View transaction</button>
</a>
</body>
