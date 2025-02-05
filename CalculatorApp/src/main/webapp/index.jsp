<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Digital Calculator</title>
    <style>
        body { text-align: center; font-family: Arial, sans-serif; }
        .calculator {
            width: 250px;
            margin: 50px auto;
            padding: 10px;
            border: 2px solid #000; /* Black border */
            border-radius: 10px;
            background-color: #000; /* Black background for the edges */
        }
        .display {
            width: 92%;
            height: 50px;
            font-size: 24px;
            text-align: right;
            margin-bottom: 10px;
            background-color: #f2f2f2; /* Light background for display area */
            border: 1px solid #000; /* Black border around display */
        }
        .buttons {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 5px;
        }
        button {
            width: 100%;
            height: 50px;
            font-size: 20px;
            border-radius: 5px;
            cursor: pointer;
            background-color: #f2f2f2; /* Light background for buttons */
            border: 1px solid #ddd; /* Border for buttons */
        }
        .equal { background-color: #4CAF50; color: white; }
        .clear { background-color: #f44336; color: white; }
    </style>
    <script>
        function appendValue(value) {
            document.getElementById("display").value += value;
        }

        function clearDisplay() {
            document.getElementById("display").value = "";
        }

        function calculate() {
            let expression = document.getElementById("display").value;
            if (expression) {
                document.getElementById("display").value = eval(expression);
            }
        }
    </script>
</head>
<body>
    <h2>Calculator using JSP</h2>
    <div class="calculator">
        <input type="text" id="display" class="display" readonly>
        <div class="buttons">
            <button onclick="appendValue('7')">7</button>
            <button onclick="appendValue('8')">8</button>
            <button onclick="appendValue('9')">9</button>
            <button onclick="appendValue('/')">/</button>
            
            <button onclick="appendValue('4')">4</button>
            <button onclick="appendValue('5')">5</button>
            <button onclick="appendValue('6')">6</button>
            <button onclick="appendValue('*')">*</button>
            
            <button onclick="appendValue('1')">1</button>
            <button onclick="appendValue('2')">2</button>
            <button onclick="appendValue('3')">3</button>
            <button onclick="appendValue('-')">-</button>
            
            <button onclick="appendValue('0')">0</button>
            <button onclick="appendValue('.')">.</button>
            <button onclick="calculate()" class="equal">=</button>
            <button onclick="appendValue('+')">+</button>
            
            <button onclick="clearDisplay()" class="clear">C</button>
        </div>
    </div>
</body>
</html>
