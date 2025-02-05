<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Calculation Result</title>
</head>
<body>
    <h2>Calculation Result</h2>

    <%
        String num1Str = request.getParameter("num1");
        String num2Str = request.getParameter("num2");
        String operator = request.getParameter("operator");

        // Trim values and ensure they are not empty
        if (num1Str == null || num2Str == null || num1Str.trim().isEmpty() || num2Str.trim().isEmpty()) {
            out.println("<p style='color:red;'>Error: Please enter both numbers.</p>");
        } else {
            try {
                double num1 = Double.parseDouble(num1Str.trim());
                double num2 = Double.parseDouble(num2Str.trim());
                double result = 0;
                boolean validOperation = true;

                switch (operator) {
                    case "+": result = num1 + num2; break;
                    case "-": result = num1 - num2; break;
                    case "*": result = num1 * num2; break;
                    case "/":
                        if (num2 != 0) {
                            result = num1 / num2;
                        } else {
                            out.println("<p style='color:red;'>Error: Division by zero is not allowed.</p>");
                            validOperation = false;
                        }
                        break;
                    default:
                        out.println("<p style='color:red;'>Invalid operator selected.</p>");
                        validOperation = false;
                }

                if (validOperation) {
                    out.println("<h3>Result: " + result + "</h3>");
                }
            } catch (NumberFormatException e) {
                out.println("<p style='color:red;'>Error: Please enter valid numeric values.</p>");
            }
        }
    %>

    <br>
    <a href="index.jsp">Go Back</a>
</body>
</html>
