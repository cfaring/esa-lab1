package org.example.esalab1.controllers;

import jakarta.enterprise.context.RequestScoped;
import jakarta.inject.Inject;
import jakarta.inject.Named;
import org.example.esalab1.entity.Book;
import org.example.esalab1.services.BookService;

import java.util.List;


@Named
@RequestScoped
public class BookController {
    @Inject
    private BookService bookService;

    private Book newBook = new Book(); // Для формы добавления новой книги

    public List<Book> getAllBooks() {
        return bookService.getAllBooks();
    }

    public String addBook() {
        bookService.addBook(newBook);
        newBook = new Book(); // Сброс формы
        return "index.jsp?faces-redirect=true"; // Перенаправление на главную страницу
    }

    public String deleteBook(int id) {
        bookService.deleteBook(id);
        return "index.jsp?faces-redirect=true"; // Перенаправление на главную страницу
    }

    // Геттеры и сеттеры
    public Book getNewBook() {
        return newBook;
    }

    public void setNewBook(Book newBook) {
        this.newBook = newBook;
    }
}
