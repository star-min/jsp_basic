package com.test.web06;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
//@RestController
public class Web06Application {

	public static void main(String[] args) {
		SpringApplication.run(Web06Application.class, args);
	}

//	@RequestMapping("/")
//	public String hello() {
//		return "<h1> Hello, Spring boot </h1>";
//	}
}
