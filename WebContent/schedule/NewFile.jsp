<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>


<sql:setDataSource
   var="dataSource"
    driver="oracle.jdbc.driver.OracleDriver"    
    url="jdbc:oracle:thin:@175.214.88.140:1521:XE"
    user="dd"
    password="1234"/> 


<sql:query sql= "select * from diary" var= "rs1" dataSource ="${dataSource}"/>

<c:forEach var="columnNames" items="${rs1.columnNames}">
${columnNames}
</c:forEach>
 
 
<c:forEach var= "i" items ="${rs1.rowsByIndex}">
<c:forEach var= "columnValue" items = "${i}">
          ${columnValue}
</c:forEach>
             
</c:forEach>



</body>
</html>