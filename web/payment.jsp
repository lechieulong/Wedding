<%-- 
    Document   : payment
    Created on : Mar 8, 2023, 1:23:06 AM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/payment.css" />
                <link rel="stylesheet" href="assets/css/main.css" />


        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="includeFile/navigation.jsp"></jsp:include>

        <form class="payment">
            <label for="name">Name</label>
            <input type="text" id="name" name="name" placeholder="Enter your name">

            <label for="email">Email</label>
            <input type="text" id="email" name="email" placeholder="Enter your email">

            <label for="card_number">Card Number</label>
            <input type="text" id="card_number" name="card_number" placeholder="Enter your card number">

            <label for="expiry_date">Expiry Date</label>
            <input type="text" id="expiry_date" name="expiry_date" placeholder="MM/YY">

            <label for="cvv">CVV</label>
            <input type="number" id="cvv" name="cvv" placeholder="Enter your CVV">

            <input type="submit" value="Submit">
        </form>
    </body>
</html>
