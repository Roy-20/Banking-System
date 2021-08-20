<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<table style="width:50%">
  <tr>
    <th>Sl</th>
    <th>Name</th>
    <th>Email</th>
    <th>Balance</th>
  </tr>
   <tr>
      <th>${sender.serialNo}</th>
      <th>${sender.name}}</th>
      <th>${sender.email}}</th>
      <th>${sender.amount}</th>
    </tr>