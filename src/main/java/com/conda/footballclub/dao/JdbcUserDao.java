package com.conda.footballclub.dao;

import com.conda.footballclub.model.User;
import org.springframework.stereotype.Repository;

@Repository
public class JdbcUserDao implements UserDao {

    @Override
    public User getUser() {
        return null;
    }
}
