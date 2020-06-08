package com.yangzc.studentboot.common.config;

import org.redisson.Redisson;
import org.redisson.api.RedissonClient;
import org.redisson.config.Config;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * @Author: yangzc
 * @Description:
 * @Date: Created on 23:06 2020/6/8
 * @Modified By:
 */
@Configuration
public class RedissonConfig {
    @Bean
    public RedissonClient redissonClient() {
        Config config = new Config();
        config.useSingleServer().setAddress("redis://127.0.0.1:6379");
        config.useSingleServer().setPassword("123456");
        RedissonClient redisson = Redisson.create(config);
        return redisson;
    }
}
