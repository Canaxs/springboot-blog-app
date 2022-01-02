package webserviceproject.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import webserviceproject.dao.jpa.BlogJpa;
import webserviceproject.model.Blog;

@Service
@Transactional
public class BlogService {
	
	private BlogJpa blogJpa;
	

	@Autowired
	public void setBlogJpa(BlogJpa blogJpa) {
		this.blogJpa = blogJpa;
	}
	
	public List<Blog> findBlog() {
		return blogJpa.findAll();
	}
	public void createOwner(Blog blog) {
		blogJpa.create(blog);
	}
	public Blog find(int a) {
		return blogJpa.findById(a);
	}
	public void deleteBlog(int id) {
		blogJpa.delete(id);
	}
	public void updateBlog(Blog blog) {
		blogJpa.update(blog);
	}
}
