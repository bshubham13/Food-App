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
    button {
        background: #4CAF50;
        color: white;
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        transition: background 0.3s ease;
    }

    /* Linear gradient hover effect */
    button:hover {
        background: linear-gradient(to right, #4CAF50, #2E8B57);
    }

    /* Style to center the form */
    table {
        width: 50%; /* Adjust the width as needed */
        margin: 0 auto;
        padding-top: 50px; /* Add padding to push the form down */
    }

    /* Change font color, make it bold, and increase font size */
    a {
        color: #333;
        font-weight: bold;
        font-size: 16px;
        text-decoration: none;
    }
</style>
</head>
<body>
    <table>
        <tr>
            <td><a href="signup.jsp"><button>SIGNUP</button></a></td>
            <td><a href="login.jsp"><button>LOGIN</button></a></td>
        </tr>
    </table>
</body>
</html>
