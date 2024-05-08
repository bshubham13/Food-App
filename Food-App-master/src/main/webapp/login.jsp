<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
    /* Set background image */
    body {
        background-image: url('https://cdnb.artstation.com/p/assets/images/images/045/438/541/original/priya-rai-food-gif-1.gif?1642708100');
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
    }

    /* Add styling for button hover effect */
    input[type="submit"] {
        background: #4CAF50;
        color: white;
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        transition: background 0.3s ease;
    }

    /* Linear gradient hover effect */
    input[type="submit"]:hover {
        background: linear-gradient(to right, #4CAF50, #2E8B57);
    }

    /* Style to center the form */
    table {
        width: 50%; /* Adjust the width as needed */
        margin: 0 auto;
        padding-top: 50px; /* Add padding to push the form down */
    }

    /* Change font color, make it bold, and increase font size */
    input[type="email"], input[type="password"] {
        color: #333;
        font-weight: bold;
        font-size: 16px;
    }
</style>
</head>
<body>
    <form action="login" method="post">
        <table>
            <tr>
                <td>Email :</td>
                <td><input type="email" name="email"
                    placeholder="Enter your email"></td>
            </tr>
            <tr>
                <td>Password :</td>
                <td><input type="password" name="password"
                    placeholder="Enter your password"></td>
            </tr>
            <tr>
                <td colspan="2" style="text-align:center;"><input type="submit" value="Login"></td>
            </tr>
        </table>
    </form>
</body>
</html>
