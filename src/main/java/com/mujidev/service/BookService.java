package com.mujidev.service;

import java.util.List;

import com.mujidev.model.Book;

public interface BookService {

    public void save(Book book);

    public List<Book> findAll();

    public Book findOne(Long theId);

    public void deleteBook(Long theId);

    public void updateBook(Book book);
}
