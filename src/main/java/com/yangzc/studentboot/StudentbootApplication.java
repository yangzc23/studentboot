package com.yangzc.studentboot;

import org.activiti.spring.boot.SecurityAutoConfiguration;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@EnableTransactionManagement
@SpringBootApplication(exclude = SecurityAutoConfiguration.class)
@MapperScan({"com.yangzc.studentboot.**.dao","com.yangzc.studentboot.**.mapper"})
@EnableCaching
public class StudentbootApplication {

    public static void main(String[] args) {
        SpringApplication.run(StudentbootApplication.class, args);
    }

}
