package com.conda.footballclub.service;

import com.conda.footballclub.dao.UserDao;
import org.springframework.stereotype.Service;

@Service
public class loginService {

    private UserDao userDao;

    public loginService(UserDao userDao) {
        this.userDao = userDao;
    }

    public void checkIdPassword() {
        System.out.println(userDao.getUser());
    }
}
