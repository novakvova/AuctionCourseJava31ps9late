package car.show.room.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;


import org.hibernate.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;

import car.show.room.pojo.Role;
import car.show.room.pojo.User;

public class CustomAuthenticationProvider implements AuthenticationProvider {

	// @Autowired
	private Session session; // This will auto-inject the authentication service into the controller.
	private static List<User> users = new ArrayList<User>();
	@Autowired
	private SessionFactory sessionFactory;
	private RegistrationService service;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	
	public CustomAuthenticationProvider(SessionFactory sessionFactory) {
		session = sessionFactory.openSession();
		//users = getUsers(session, username);
//		users.add(new User("erin", "123", "ROLE_ADMIN"));
//		users.add(new User("mike", "234", "ROLE_ADMIN"));
		this.sessionFactory=sessionFactory;
		System.out.println("------Connection good---Security--");
		// session.close();
	}

	@Override
	public Authentication authenticate(Authentication authentication) throws AuthenticationException {
		String name = authentication.getName();
		Object credentials = authentication.getCredentials();
		System.out.println("credentials class: " + credentials.toString());

		if (!(credentials instanceof String)) {
			return null;
		}
		String password = credentials.toString();
		
		//System.out.println(findByUsername(name).toString());
		User user= findByUsername(name);
		
		
		if(user==null) {
			
			throw new BadCredentialsException("Authentication failed for " + name);
		}
		else
			System.out.println("--------- "+user);
		if(!user.getPassword().equals(password))
		{
			throw new BadCredentialsException("Authentication failed for " + name);
		}
		List<GrantedAuthority> grantedAuthorities = new ArrayList<>();
		for(Role role :user.getRoles()) {
			grantedAuthorities.add(new SimpleGrantedAuthority(role.getName()));
		}
		Authentication auth = new UsernamePasswordAuthenticationToken(name, password, grantedAuthorities);
		return auth;
	}

	@Override
	public boolean supports(Class<?> authentication) {
		return authentication.equals(UsernamePasswordAuthenticationToken.class);
		// return false;
	}

	private User findByUsername(String username) {
		Session session = sessionFactory.openSession();
		String hql = "FROM User u WHERE u.username = :uname";
		Query query = session.createQuery(hql);
		query.setParameter("uname", username);
		query.setMaxResults(1);
		User u;
		try {
			u = (User)query.getSingleResult();
		}
		catch(Exception ex) {
			u=null;
		}
		return u;
	}

}
