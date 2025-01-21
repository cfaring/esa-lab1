package org.example.esalab1.services;

import org.example.esalab1.entity.Reader;

import jakarta.ejb.Stateless;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import java.util.List;

@Stateless
public class ReaderService {
    @PersistenceContext(unitName = "esa-lab1")
    private EntityManager em;

    public void addReader(Reader reader) {
        em.persist(reader);
    }

    public List<Reader> getAllReaders() {
        return em.createQuery("SELECT r FROM Reader r", Reader.class).getResultList();
    }
    public void deleteReader(int id) {
        Reader reader = em.find(Reader.class, id);
        if (reader != null) {
            em.remove(reader);
        }
    }
}