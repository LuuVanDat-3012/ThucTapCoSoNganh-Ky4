package com.restfullapi.demo;

import com.restfullapi.demo.Entity.User;
import com.restfullapi.demo.Service.UserJPA;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

@Configuration
@EnableAutoConfiguration

@ComponentScan({"com.restfullapi.demo.MyController","com.restfullapi.demo.Service","com.restfullapi.demo.Security",
        "com.restfullapi.demo.config","com.restfullapi.demo.Entity"})
public class DemoApplication {

    public static void main(String[] args) {

//        SpringApplication.run(DemoApplication.class, args).refresh();

        SpringApplication.run(DemoApplication.class, args);
    }


}
