//package com.aim.configuration;
//
//import org.springframework.context.annotation.Bean;
//import org.springframework.context.annotation.Configuration;
//import org.springframework.context.annotation.Profile;
//
//import javax.activation.DataSource;
//import javax.naming.InitialContext;
//
///**
// * Created with IntelliJ IDEA.
// * User: milky
// * Date: 10/21/13
// * Time: 1:34 PM
// */
//@Configuration
//@Profile("prod")
//public class ProdDatabaseConfig {
//
//    @Bean
//    public DataSource dataSource() throws Exception {
//        return (DataSource) new InitialContext().lookup("");
//    }
//}
