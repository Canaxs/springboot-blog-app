package webserviceproject.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import webserviceproject.model.Blog;
import webserviceproject.service.BlogService;

@RestController
@RequestMapping("/rest")
public class WebServiceRestController {
	@Autowired
	private BlogService blogService;
	
	@RequestMapping(method = RequestMethod.GET, value = "/blog/{id}",produces="application/json")
	public ResponseEntity<?> getBlog(@PathVariable("id") int id) {
		try {
			Blog blog = blogService.find(id);
			return ResponseEntity.ok(blog);
		} catch (Exception e) {
			return ResponseEntity.notFound().build();
		}
		
	}
}
