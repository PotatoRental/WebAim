package com.aim.configuration;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import javax.sql.DataSource;
import java.util.Properties;

/**
 * Created with IntelliJ IDEA.
 * User: milky
 * Date: 10/21/13
 * Time: 3:08 AM
 */
@Configuration
public class GlobalConfig {

    public @Bean Properties globalProperties() {
        Properties properties = new Properties();
        properties.setProperty("globalMessage", "Welcome! Only admin users can set messages. Try it with milky::test");

        return properties;
    }
}
