<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>

<!DOCTYPE html>

<html>
<head>
    <title>Student confirmation</title>
</head>
<body>
    The student is confirmed: ${student.lastName} ${student.firstName}
    <br><br>
    Country: ${student.country}
    <br><br>
    Favorite language ${student.favoriteLanguage}
    <br><br>

    Operating systems:
    <ul>

        <c:forEach var="temp" items="${student.operatingSystem}">

            <li>${temp}</li>

        </c:forEach>

    </ul>
</body>
</html>
