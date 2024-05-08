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
    .container {
        width: 50%; /* Adjust the width as needed */
        margin: 0 auto;
        padding-top: 50px; /* Add padding to push the form down */
    }

    /* Change font color, make it bold, and increase font size */
    input[type="text"], input[type="email"], input[type="password"], input[type="tel"], select {
        color: #333;
        font-weight: bold;
        font-size: 16px;
    }
</style>
</head>
<body>
    <div class="container">
        <form action="signup" method="post">
            <table>
                <tr>
                    <td>Name :</td>
                    <td><input type="text" name="name"
                        placeholder="Enter your name"></td>
                </tr>
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
                    <td>Phone :</td>
                    <td><input type="tel" name="phone"
                        placeholder="Enter your phone"></td>
                </tr>
                <tr>
                    <td>Address :</td>
                    <td><input type="text" name="address"
                        placeholder="Enter your address"></td>
                </tr>
                <tr>
                    <td>Role :</td>
                    <td><select name="role">
                            <option>Select</option>
                            <option value="manager">Manager</option>
                            <option value="staff">Staff</option>
                            <option value="customer">Customer</option>
                    </select></td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align:center;"><input type="submit" value="Save"></td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
