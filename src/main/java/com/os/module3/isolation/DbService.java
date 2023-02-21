package com.os.module3.isolation;

import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;


public class DbService {
    @Transactional(isolation = Isolation.READ_COMMITTED, propagation= Propagation.REQUIRED) //default in postgres
    public void log_READ_COMMITTED(String message){
        // ...
    }

    @Transactional(isolation = Isolation.REPEATABLE_READ, propagation= Propagation.REQUIRES_NEW)
    public void log_REPEATABLE_READ(String message){
        // ...
    }

    @Transactional(isolation = Isolation.SERIALIZABLE)
    public void log_SERIALIZABLE(String message){
        // ...
    }
}
