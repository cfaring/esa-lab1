<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:h="http://xmlns.jcp.org/jsf/html"
      xmlns:f="http://xmlns.jcp.org/jsf/core">
<h:head>
    <title>Library Management</title>
</h:head>
<h:body>
    <h1>Books</h1>
    <h:form>
        <h:dataTable value="#{bookController.allBooks}" var="book">
            <h:column>
                <f:facet name="header">Title</f:facet>
                #{book.title}
            </h:column>
            <h:column>
                <f:facet name="header">Author</f:facet>
                #{book.author}
            </h:column>
            <h:column>
                <f:facet name="header">Year</f:facet>
                #{book.year}
            </h:column>
            <h:column>
                <h:commandLink value="Delete" action="#{bookController.deleteBook(book.id)}" />
            </h:column>
        </h:dataTable>
    </h:form>

    <h2>Add a New Book</h2>
    <h:form>
        <h:inputText value="#{bookController.newBook.title}" placeholder="Title" />
        <h:inputText value="#{bookController.newBook.author}" placeholder="Author" />
        <h:inputText value="#{bookController.newBook.year}" placeholder="Year" />
        <h:commandButton value="Add Book" action="#{bookController.addBook}" />
    </h:form>

    <h1>Readers</h1>
    <h:form>
        <h:dataTable value="#{readerController.allReaders}" var="reader">
            <h:column>
                <f:facet name="header">Name</f:facet>
                #{reader.name}
            </h:column>
            <h:column>
                <f:facet name="header">Email</f:facet>
                #{reader.email}
            </h:column>
            <h:column>
                <h:commandLink value="Delete" action="#{readerController.deleteReader(reader.id)}" />
            </h:column>
        </h:dataTable>
    </h:form>

    <h2>Add a New Reader</h2>
    <h:form>
        <h:inputText value="#{readerController.newReader.name}" placeholder="Name" />
        <h:inputText value="#{readerController.newReader.email}" placeholder="Email" />
        <h:commandButton value="Add Reader" action="#{readerController.addReader}" />
    </h:form>
</h:body>
</html>