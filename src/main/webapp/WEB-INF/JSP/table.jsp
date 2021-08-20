<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<table style="width:50%">
  <tr>
    <th>SL</th>
    <th>Name</th>
    <th>Email</th>
    <th>CurrentBalance</th>
  </tr>
  <c:forEach var="customer" items="${customers}">
        <tr>
              <td>${customer.serialNo}</td>
              <td>${customer.name}</td>
              <td>${customer.email}</td>
              <td>${customer.currentBalance}</td>
              <td><button type="submit" form="form1" value="Submit">Transact</button></td>
          </tr>
  </c:forEach>
 </table>