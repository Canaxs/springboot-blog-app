package webserviceproject;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import webserviceproject.service.BlogService;

@SpringBootApplication
public class WebServiceApplication {
	public static void main(String[] args) throws Exception {
		SpringApplication.run(WebServiceApplication.class, args);
	}

}
