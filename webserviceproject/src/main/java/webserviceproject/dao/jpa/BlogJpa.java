package webserviceproject.dao.jpa;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;


import webserviceproject.model.Blog;

@Repository
public class BlogJpa {

	@PersistenceContext
	private EntityManager entityManager;
	
	
	public List<Blog> findAll() {
		return entityManager.createQuery("from Blog", Blog.class).getResultList();
	}
	public Blog findById(int i) {
		return entityManager.find(Blog.class, i);
	}
	public Blog update(Blog blog) {
		return entityManager.merge(blog);
	}
	public void create(Blog blog) {
		entityManager.persist(blog);
	}
	public void delete(int id) {
		entityManager.remove(entityManager.getReference(Blog.class, id));
	}
	
}
