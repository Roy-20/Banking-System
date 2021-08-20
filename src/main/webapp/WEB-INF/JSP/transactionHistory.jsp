<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<table style="width:50%">
  <tr>
    <th>Sl</th>
    <th>Sender</th>
    <th>Receiver</th>
    <th>Amount</th>
    <th>Date & Time</th>
  </tr>
  <c:forEach var="txn" items="${txns}">
        <tr>
              <td>${txn.serialNo}</a></td>
              <td>${txn.sender}</td>
              <td>${txn.receiver}</td>
              <td>${txn.amount}</td>
              <td>${txn.date}</td>
          </tr>
  </c:forEach>
 </table>