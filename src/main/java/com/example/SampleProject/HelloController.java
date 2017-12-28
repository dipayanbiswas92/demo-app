package com.example.SampleProject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {

    private Environment environment;

    @Autowired
    public HelloController(Environment environment) {
        this.environment = environment;
    }

    @RequestMapping("/")
    public String index() {
        // String message = environment.getProperty("message");
        return String.format("Welcome to Vodacom on Openshift");
    }
}
