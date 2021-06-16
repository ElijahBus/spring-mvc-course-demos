<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<html>
<head>
    <title>Registration</title>
    <style>
        .error {
            font-family: "American Typewriter";
            color: red;
        }

        .errors-block {
            padding: 5px 0;
            border: 1px solid red;
            color: red;
            width: 100%;
        }

    </style>
</head>
<body>
    <h1>Registration</h1>

    <form:form modelAttribute="registration">
        <form:errors path="*" cssClass="errors-block" element="div" />

         <table>
             <tr>
                 <td>
                     <spring:message code="name" />:
                 </td>
                 <td>
                     <form:input path="name" />
                 </td>
                 <td>
                     <form:errors path="name" cssClass="error" element="span" />
                 </td>
             </tr>
             <tr>
                 <td colspan="3">
                     <input type="submit" value="Register">
                 </td>
             </tr>
         </table>
    </form:form>
</body>
</html>
