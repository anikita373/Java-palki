<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <link rel="stylesheet" href="../style/main.css"/>
    <title>Lesson schedule</title>

    <style>
        .wrapper {
            text-align: center;
            background-color: cadetblue;
        }
        .box {
            display: inline-block; /*располагаем блоки в ряд по горизонтали*/
            width: 20%; /*убираем правый отступ между блоками*/
            border: 4px double wheat;
        }

        .headerTable {
            color:  wheat;
            font-size: 30px;
            font-style: italic;
            font-weight:bold;
        }
        .textInTable {
            color: azure;
            font-size: 20px;
        }
        .text{
            text-align: center;
            font-size: 20px;
        }
        .btn {
            text-align: center;

        }
        a {
            width: 100%;
            text-decoration: none;
            background: darkgray;
            font-size: 20px;
        }
        a:hover {
            width: 100%;
            text-decoration: underline;
            background: lightpink;
            font-size: 20px;
        }
    </style>
</head>
<body>
    <h1 align="center">Welcome, ${user}!</h1>
    <p class="text">Here is your class schedule for today.</p>
    <hr/>

    <div class="wrapper">
        <div class="box"> <p class="headerTable">Group</p> </div>
        <div class="box"> <p class="headerTable">Lesson</p> </div>
        <div class="box"> <p class="headerTable">Audience</p> </div>
        <div class="box"> <p class="headerTable">Week</p> </div>
    </div>
    <%-------------------------------Заглушка-------------------------------%>
    <div class="wrapper">
        <div class="box"> <p class="textInTable">343</p> </div>
        <div class="box"> <p class="textInTable">9:55 - 11:30</p> </div>
        <div class="box"> <p class="textInTable">253</p> </div>
        <div class="box"> <p class="textInTable">Thursday</p> </div>
    </div>
    <div class="wrapper">
        <div class="box"> <p class="textInTable">343</p> </div>
        <div class="box"> <p class="textInTable">11:40 - 13:15</p> </div>
        <div class="box"> <p class="textInTable">448 </p> </div>
        <div class="box"> <p class="textInTable">Thursday</p> </div>
    </div>
    <%-----------------------------------------------------------------------%>

<%--        <c:forEach var="lesson" items="${ schedule.list }">--%>
<%--        <tr>--%>
<%--            <div class="tile-block">--%>
<%--                <td> <p class="tile-title">  <c: out value="${ schedule.group }" /></p>     </td>--%>
<%--                <td> <p class="tile-title">  <c: out value="${ schedule.lesson }" /></p>    </td>--%>
<%--                <td> <p class="tile-title">  <c: out value="${ schedule.classroom }" /></p> </td>--%>
<%--                <td> <p class="tile-title">  <c: out value="${ schedule.status }" /></p>    </td>--%>
<%--                <td> <p class="tile-title">  <c: out value="${ schedule.week }" /></p>      </td>--%>
<%--            </div>--%>
<%--        </tr>--%>
<%--        </c:forEach>--%>
    <hr/>
    <div class="btn"> <a href="controller?command=logout">Logout</a> </div>

</body></html>