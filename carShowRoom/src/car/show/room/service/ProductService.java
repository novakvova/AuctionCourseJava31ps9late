package car.show.room.service;

import java.util.List;
import java.util.Set;

import org.apache.log4j.Logger;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import car.show.room.pojo.Category;
import car.show.room.pojo.Product;
import car.show.room.pojo.ProductDTO;
import car.show.room.pojo.Role;
import car.show.room.pojo.User;
import car.show.room.pojo.product.ProductEditDTO;

public class ProductService implements IProductService {

	private Session session;

	public ProductService(SessionFactory sessionFactory) {
		this.session = sessionFactory.openSession();
	}

	@Override
	public Product AddProduct(ProductDTO productdto) {
		session.beginTransaction();
		Product product = new Product();
		product.setName(productdto.getName());
		product.setPrice(productdto.getPrice());
		product.setImage(productdto.getImage());
		product.setDescription(productdto.getDescription());
		Category category = new Category();
		category.setId(Long.parseLong(productdto.getCategory()));
		category.setName(productdto.getCategory());
		category.setImage(productdto.getImage());
		category.setDescription(productdto.getDescription());
//		session.save(category);
		product.setCategory(category);
		session.save(product);
		session.getTransaction().commit();
		return product;
	}

	@Override
	public List<Product> GetAllProducts() {
		return session.createQuery("SELECT a FROM Product a", Product.class).getResultList();
	}

	@Override
	public Product GetById(long id) {
		session.beginTransaction();
		Product product = (Product) session.get(Product.class, id);
		session.getTransaction().commit();
		return product;

	}

	@Override
	public void Delete(long id) {
		Product product = this.GetById(id);
		session.beginTransaction();
		session.delete(product);
		session.getTransaction().commit();
	}

	@Override
	public void Update(ProductEditDTO productDTO) {
		Product product = this.GetById(productDTO.getId());
		session.beginTransaction();
		product.setDescription(productDTO.getDescription());
		product.setImage(productDTO.getImage());
		product.setName(productDTO.getName());
		product.setPrice(productDTO.getPrice());
		long id = Long.parseLong(productDTO.getCategory_id());
		Category cat = new Category();
		cat.setId(id);
		product.setCategory(cat);
		session.update(product);
		session.getTransaction().commit();
	}

}
