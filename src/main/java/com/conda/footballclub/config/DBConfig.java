package com.conda.footballclub.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.context.support.PropertySourcesPlaceholderConfigurer;

@Configuration
@PropertySource(
        ignoreResourceNotFound = true,
        value = {
                "classpath:/conf/database.properties",
                "file:/home/ubuntu/apps/conf/database.properties"
        }
)
public class DBConfig {
    @Bean
    public static PropertySourcesPlaceholderConfigurer propertySourcesPlaceholderConfigurer () {
        return new PropertySourcesPlaceholderConfigurer();
    }
}
