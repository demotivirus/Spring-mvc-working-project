<!DOCTYPE html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Student registration form</title>
</head>
<body>
    <%--@elvariable id="student" type=""--%>
    <form:form action="processForm" modelAttribute="student">First name<form:input path="firstName"/>

            <br><br>

            Last name <form:input path="lastName"/>

            <br><br>

            Country:
            <%--<form:select path="country">--%>
                <%--<form:option value="Ukraina" label="Ukraina"/>--%>
                <%--<form:option value="Brasil" label="Brasil"/>--%>
                <%--<form:option value="USA" label="USA"/>--%>
                <%--<form:option value="German" label="German"/>--%>
                <%--<form:option value="Russia" label="Russia"/>--%>
            <%--</form:select>--%>

            <form:select path="country">
                <form:options items="${student.countryOptions}"/>
            </form:select>
            <br><br>

            Favorite language:
            <%--Java <form:radiobutton path="favoriteLanguage" value="Java"/>--%>
            <%--C++ <form:radiobutton path="favoriteLanguage" value="C++"/>--%>
            <%--Python <form:radiobutton path="favoriteLanguage" value="Python"/>--%>
            <%--C# <form:radiobutton path="favoriteLanguage" value="C#"/>--%>
            <%--PHP <form:radiobutton path="favoriteLanguage" value="PHP"/>--%>
            <form:select path="favoriteLanguage">
                <form:options items="${favoriteLanguageProperties}"/>
            </form:select>
            <br><br>

            Operating systems:
            Linux <form:checkbox path="operatingSystem" value="Linux"/>
            Mac <form:checkbox path="operatingSystem" value="Mac"/>
            Windows <form:checkbox path="operatingSystem" value="Windows"/>
            <br><br>

            <input type="submit" value="Submit"/>
    </form:form>
</body>
</html>
