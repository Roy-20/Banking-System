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

    <form action="#" th:action="@{/transact}" th:object="${transactionForm}" method="post">
        <label for="receiver">Name</label>
        <select th:field="*receiver">
         <option th:each="p : ${receivers}" th:value=${p} th:text="${p}"/>
        </select>
        <label for="amount">Amount</label>
        <input type="text" th:field="*{amount}" id="amount" placeholder="Amount">
        <input type="submit" value="SEND AMOUNT">
    </form>