package com.yangzc.studentboot;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@EnableTransactionManagement
@SpringBootApplication
@MapperScan("com.yangzc.studentboot.**.dao")
@EnableCaching
public class StudentbootApplication {

    public static void main(String[] args) {
        SpringApplication.run(StudentbootApplication.class, args);
    }

}
