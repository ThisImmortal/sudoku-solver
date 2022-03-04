<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Sudoku Solver</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="webjars/bootstrap/5.0.1/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../css/sudoku-box.css">
</head>

<body>
<br>
<h3>${sudokuHeader}</h3>
<br>

<div>
<form:form method="post" modelAttribute="sudokuBoard">

<table id="sudoku">
    <tbody>
    <tr>
        <td><form:input type="number" path="rowsAndColumns[0][0]" min="0" max="9" required="true"/></td>
        <td><form:input type="number" path="rowsAndColumns[0][1]" min="0" max="9" required="true"/></td>
        <td><form:input type="number" path="rowsAndColumns[0][2]" min="0" max="9" required="true"/></td>
        <td><form:input type="number" path="rowsAndColumns[0][3]" min="0" max="9" required="true"/></td>
        <td><form:input type="number" path="rowsAndColumns[0][4]" min="0" max="9" required="true"/></td>
        <td><form:input type="number" path="rowsAndColumns[0][5]" min="0" max="9" required="true"/></td>
        <td><form:input type="number" path="rowsAndColumns[0][6]" min="0" max="9" required="true"/></td>
        <td><form:input type="number" path="rowsAndColumns[0][7]" min="0" max="9" required="true"/></td>
        <td><form:input type="number" path="rowsAndColumns[0][8]" min="0" max="9" required="true"/></td>
    </tr>
    <tr>
        <td><form:input type="number" path="rowsAndColumns[1][0]" min="0" max="9" required="true"/></td>
        <td><form:input type="number" path="rowsAndColumns[1][1]" min="0" max="9" required="true"/></td>
        <td><form:input type="number" path="rowsAndColumns[1][2]" min="0" max="9" required="true"/></td>
        <td><form:input type="number" path="rowsAndColumns[1][3]" min="0" max="9" required="true"/></td>
        <td><form:input type="number" path="rowsAndColumns[1][4]" min="0" max="9" required="true"/></td>
        <td><form:input type="number" path="rowsAndColumns[1][5]" min="0" max="9" required="true"/></td>
        <td><form:input type="number" path="rowsAndColumns[1][6]" min="0" max="9" required="true"/></td>
        <td><form:input type="number" path="rowsAndColumns[1][7]" min="0" max="9" required="true"/></td>
        <td><form:input type="number" path="rowsAndColumns[1][8]" min="0" max="9" required="true"/></td>
    </tr>
    <tr>
        <td><form:input type="number" path="rowsAndColumns[2][0]" min="0" max="9" required="true"/></td>
        <td><form:input type="number" path="rowsAndColumns[2][1]" min="0" max="9" required="true"/></td>
        <td><form:input type="number" path="rowsAndColumns[2][2]" min="0" max="9" required="true"/></td>
        <td><form:input type="number" path="rowsAndColumns[2][3]" min="0" max="9" required="true"/></td>
        <td><form:input type="number" path="rowsAndColumns[2][4]" min="0" max="9" required="true"/></td>
        <td><form:input type="number" path="rowsAndColumns[2][5]" min="0" max="9" required="true"/></td>
        <td><form:input type="number" path="rowsAndColumns[2][6]" min="0" max="9" required="true"/></td>
        <td><form:input type="number" path="rowsAndColumns[2][7]" min="0" max="9" required="true"/></td>
        <td><form:input type="number" path="rowsAndColumns[2][8]" min="0" max="9" required="true"/></td>
    </tr>
    <tr>
        <td><form:input type="number" path="rowsAndColumns[3][0]" min="0" max="9" required="true"/></td>
        <td><form:input type="number" path="rowsAndColumns[3][1]" min="0" max="9" required="true"/></td>
        <td><form:input type="number" path="rowsAndColumns[3][2]" min="0" max="9" required="true"/></td>
        <td><form:input type="number" path="rowsAndColumns[3][3]" min="0" max="9" required="true"/></td>
        <td><form:input type="number" path="rowsAndColumns[3][4]" min="0" max="9" required="true"/></td>
        <td><form:input type="number" path="rowsAndColumns[3][5]" min="0" max="9" required="true"/></td>
        <td><form:input type="number" path="rowsAndColumns[3][6]" min="0" max="9" required="true"/></td>
        <td><form:input type="number" path="rowsAndColumns[3][7]" min="0" max="9" required="true"/></td>
        <td><form:input type="number" path="rowsAndColumns[3][8]" min="0" max="9" required="true"/></td>
    </tr>
    <tr>
        <td><form:input type="number" path="rowsAndColumns[4][0]" min="0" max="9" required="true"/></td>
        <td><form:input type="number" path="rowsAndColumns[4][1]" min="0" max="9" required="true"/></td>
        <td><form:input type="number" path="rowsAndColumns[4][2]" min="0" max="9" required="true"/></td>
        <td><form:input type="number" path="rowsAndColumns[4][3]" min="0" max="9" required="true"/></td>
        <td><form:input type="number" path="rowsAndColumns[4][4]" min="0" max="9" required="true"/></td>
        <td><form:input type="number" path="rowsAndColumns[4][5]" min="0" max="9" required="true"/></td>
        <td><form:input type="number" path="rowsAndColumns[4][6]" min="0" max="9" required="true"/></td>
        <td><form:input type="number" path="rowsAndColumns[4][7]" min="0" max="9" required="true"/></td>
        <td><form:input type="number" path="rowsAndColumns[4][8]" min="0" max="9" required="true"/></td>
    </tr>
    <tr>
        <td><form:input type="number" path="rowsAndColumns[5][0]" min="0" max="9" required="true"/></td>
        <td><form:input type="number" path="rowsAndColumns[5][1]" min="0" max="9" required="true"/></td>
        <td><form:input type="number" path="rowsAndColumns[5][2]" min="0" max="9" required="true"/></td>
        <td><form:input type="number" path="rowsAndColumns[5][3]" min="0" max="9" required="true"/></td>
        <td><form:input type="number" path="rowsAndColumns[5][4]" min="0" max="9" required="true"/></td>
        <td><form:input type="number" path="rowsAndColumns[5][5]" min="0" max="9" required="true"/></td>
        <td><form:input type="number" path="rowsAndColumns[5][6]" min="0" max="9" required="true"/></td>
        <td><form:input type="number" path="rowsAndColumns[5][7]" min="0" max="9" required="true"/></td>
        <td><form:input type="number" path="rowsAndColumns[5][8]" min="0" max="9" required="true"/></td>
    </tr>
    <tr>
        <td><form:input type="number" path="rowsAndColumns[6][0]" min="0" max="9" required="true"/></td>
        <td><form:input type="number" path="rowsAndColumns[6][1]" min="0" max="9" required="true"/></td>
        <td><form:input type="number" path="rowsAndColumns[6][2]" min="0" max="9" required="true"/></td>
        <td><form:input type="number" path="rowsAndColumns[6][3]" min="0" max="9" required="true"/></td>
        <td><form:input type="number" path="rowsAndColumns[6][4]" min="0" max="9" required="true"/></td>
        <td><form:input type="number" path="rowsAndColumns[6][5]" min="0" max="9" required="true"/></td>
        <td><form:input type="number" path="rowsAndColumns[6][6]" min="0" max="9" required="true"/></td>
        <td><form:input type="number" path="rowsAndColumns[6][7]" min="0" max="9" required="true"/></td>
        <td><form:input type="number" path="rowsAndColumns[6][8]" min="0" max="9" required="true"/></td>
    </tr>
    <tr>
        <td><form:input type="number" path="rowsAndColumns[7][0]" min="0" max="9" required="true"/></td>
        <td><form:input type="number" path="rowsAndColumns[7][1]" min="0" max="9" required="true"/></td>
        <td><form:input type="number" path="rowsAndColumns[7][2]" min="0" max="9" required="true"/></td>
        <td><form:input type="number" path="rowsAndColumns[7][3]" min="0" max="9" required="true"/></td>
        <td><form:input type="number" path="rowsAndColumns[7][4]" min="0" max="9" required="true"/></td>
        <td><form:input type="number" path="rowsAndColumns[7][5]" min="0" max="9" required="true"/></td>
        <td><form:input type="number" path="rowsAndColumns[7][6]" min="0" max="9" required="true"/></td>
        <td><form:input type="number" path="rowsAndColumns[7][7]" min="0" max="9" required="true"/></td>
        <td><form:input type="number" path="rowsAndColumns[7][8]" min="0" max="9" required="true"/></td>
    </tr>
    <tr>
        <td><form:input type="number" path="rowsAndColumns[8][0]" min="0" max="9" required="true"/></td>
        <td><form:input type="number" path="rowsAndColumns[8][1]" min="0" max="9" required="true"/></td>
        <td><form:input type="number" path="rowsAndColumns[8][2]" min="0" max="9" required="true"/></td>
        <td><form:input type="number" path="rowsAndColumns[8][3]" min="0" max="9" required="true"/></td>
        <td><form:input type="number" path="rowsAndColumns[8][4]" min="0" max="9" required="true"/></td>
        <td><form:input type="number" path="rowsAndColumns[8][5]" min="0" max="9" required="true"/></td>
        <td><form:input type="number" path="rowsAndColumns[8][6]" min="0" max="9" required="true"/></td>
        <td><form:input type="number" path="rowsAndColumns[8][7]" min="0" max="9" required="true"/></td>
        <td><form:input type="number" path="rowsAndColumns[8][8]" min="0" max="9" required="true"/></td>
    </tr>
    </tbody>
</table>

    <a>
        <button type="submit" class="btn btn-primary btn-lg" style="margin-left: 15px;">
            Solve
        </button>
    </a>
</form:form>

<a href="/">
    <button type="submit" class="btn btn-success btn-lg" style="margin-bottom: 70px; margin-left: 15px;">
        Reset
    </button>
</a>
</div>

<script type="application/javascript" src="../js/sudoku-box.js"></script>
</body>
</html>