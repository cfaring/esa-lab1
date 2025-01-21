package org.example.esalab1.services;

import org.example.esalab1.entity.Book;

import jakarta.ejb.Stateless;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;


import java.util.List;

@Stateless
public class BookService {
    @PersistenceContext(unitName = "esa-lab1")
    private EntityManager em;

    public void addBook(Book book) {
        em.persist(book);
    }

    public List<Book> getAllBooks() {
        return em.createQuery("SELECT b FROM Book b", Book.class).getResultList();
    }
    public void deleteBook(int id) {
        Book book = em.find(Book.class, id);
        if (book != null) {
            em.remove(book);
        }
    }
}