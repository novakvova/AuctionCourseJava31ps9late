package car.show.room.service;

import java.util.Arrays;

import javax.persistence.Query;
import javax.transaction.Transactional;

import org.apache.log4j.Logger;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import car.show.room.pojo.User;
import car.show.room.pojo.UserDTO;
import validation.EmailExistsException;

//@Service("registrationService")
@Service
public class RegistrationService implements IRegistrationService {
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

	@Transactional
	@Override
	public User registerNewUserAccount(UserDTO accountDto) throws EmailExistsException {

//		if (usernameExists(accountDto.getUsername())) {
//			throw new EmailExistsException("There is an account with that email address:  + accountDto.getEmail());");
//		}
		User user = new User();
		user.setPassword(accountDto.getPassword());
		user.setRole(accountDto.getRole());
		user.setUsername(accountDto.getUsername());
		Session session = sessionFactory.openSession();
		session.save(user);
//		session.getTransaction().commit();
		return user;
	}

	private boolean usernameExists(String username) {
		User user = findByUsername(username);
		if (user != null) {
			return true;
		}
		return false;
	}

	private User findByUsername(String username) {
		Session session = sessionFactory.openSession();
		String hql = "FROM User u WHERE u.username = :uname";
		Query query = session.createQuery(hql);
		query.setParameter("uname", username);
		User u = (User) query.getSingleResult();
		return u;
	}

}
