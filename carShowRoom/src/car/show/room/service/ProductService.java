package car.show.room.service;

import org.apache.log4j.Logger;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import car.show.room.pojo.Category;
import car.show.room.pojo.Product;
import car.show.room.pojo.ProductDTO;
import car.show.room.pojo.Role;
import car.show.room.pojo.User;

public class ProductService  implements IProductService{

	
	@Autowired
	private SessionFactory sessionFactory;
	// private HibernateTemplate hibernateTemplate;
	private static Logger log = Logger.getLogger(AuthService.class);

//	public SessionFactory getSessionFactory() {
//		return sessionFactory;
//	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	@Override
	public Product AddProduct(ProductDTO productdto) {
	
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		Product product = new Product();
		product.setName(productdto.getName());
		product.setPrice(productdto.getPrice());
		product.setImage(productdto.getImage());
		product.setDescription(productdto.getDescription());
		Category category = new Category();
		category.setName(productdto.getCategory());
		category.setImage(productdto.getImage());
		category.setDescription(productdto.getDescription());
		session.save(category);
		product.setCategory(category);
		session.save(product);
		session.getTransaction().commit();
		return product;
	}


}
