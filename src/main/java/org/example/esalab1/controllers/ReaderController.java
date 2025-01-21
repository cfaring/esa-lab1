package org.example.esalab1.controllers;

import org.example.esalab1.entity.Reader;
import org.example.esalab1.services.ReaderService;

import jakarta.enterprise.context.RequestScoped;
import jakarta.inject.Inject;
import jakarta.inject.Named;
import org.example.esalab1.entity.Book;
import org.example.esalab1.services.BookService;

import java.util.List;

@Named
@RequestScoped
public class ReaderController {
    @Inject
    private ReaderService readerService;

    private Reader newReader = new Reader(); // Для формы добавления нового читателя

    public List<Reader> getAllReaders() {
        return readerService.getAllReaders();
    }

    public String addReader() {
        readerService.addReader(newReader);
        newReader = new Reader(); // Сброс формы
        return "index.jsp?faces-redirect=true"; // Перенаправление на главную страницу
    }

    public String deleteReader(int id) {
        readerService.deleteReader(id);
        return "index.jsp?faces-redirect=true"; // Перенаправление на главную страницу
    }

    // Геттеры и сеттеры
    public Reader getNewReader() {
        return newReader;
    }

    public void setNewReader(Reader newReader) {
        this.newReader = newReader;
    }
}
