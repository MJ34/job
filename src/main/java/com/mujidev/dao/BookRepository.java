package com.mujidev.dao;

import org.springframework.data.repository.CrudRepository;

import com.mujidev.model.Book;

public interface BookRepository extends CrudRepository<Book, Long> {

}
