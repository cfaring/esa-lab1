<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>

<html>
<head>
    <title>Library Management</title>
</head>
<body>
<h1>Books</h1>
<form action="#" method="post">
    <table border="1">
        <tr>
            <th>Title</th>
            <th>Author</th>
            <th>Year</th>
            <th>Action</th>
        </tr>
        <c:forEach items="#{bookController.allBooks}" var="book">
            <tr>
                <td>${book.title}</td>
                <td>${book.author}</td>
                <td>${book.year}</td>
                <td>
                    <a href="#{request.contextPath}/deleteBook.xhtml?id=#{book.id}">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</form>

<h2>Add a New Book</h2>
<form action="#{request.contextPath}/addBook.xhtml" method="post">
    <input type="text" name="title" placeholder="Title" value="#{bookController.newBook.title}"/>
    <input type="text" name="author" placeholder="Author" value="#{bookController.newBook.author}"/>
    <input type="text" name="year" placeholder="Year" value="#{bookController.newBook.year}"/>
    <input type="submit" value="Add Book"/>
</form>

<h1>Readers</h1>
<form action="#" method="post">
    <table border="1">
        <tr>
            <th>Name</th>
            <th>Email</th>
            <th>Action</th>
        </tr>
        <c:forEach items="#{readerController.allReaders}" var="reader">
            <tr>
                <td>${reader.name}</td>
                <td>${reader.email}</td>
                <td>
                    <a href="#{request.contextPath}/deleteReader.xhtml?id=#{reader.id}">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</form>

<h2>Add a New Reader</h2>
<form action="#{request.contextPath}/addReader.xhtml" method="post">
    <input type="text" name="name" placeholder="Name" value="#{readerController.newReader.name}"/>
    <input type="text" name="email" placeholder="Email" value="#{readerController.newReader.email}"/>
    <input type="submit" value="Add Reader"/>
</form>
</body>
</html>