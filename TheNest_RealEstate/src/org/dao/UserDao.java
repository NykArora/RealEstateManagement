package org.dao;

import java.util.Date;
import java.util.List;

import org.dto.User;
import org.dto.UserRole;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.LogicalExpression;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.util.HibernateSessionFactory;
import org.util.PasswordHasher;

@Repository
public class UserDao implements IUser {

	@Autowired
	private HibernateSessionFactory  factory;
	
	@Transactional
	public List<UserRole> getuserRoles() 
	{
		Session session=factory.getSession();
		
		List<UserRole> userRoles=session.createCriteria(UserRole.class).list();
	
		
		return userRoles;
	}
	
	
	@Transactional
	public User userlogin(User user) {
		
			Session session=factory.getSession();
			Criteria criteria=session.createCriteria(User.class);
			String cryptedPassword = new PasswordHasher().encode(user.getPassword());
			String Password = (user.getPassword());
			 @SuppressWarnings("unchecked")
			
			 Criterion username=Restrictions.eq("username", user.getUsername());
			 Criterion email=Restrictions.eq("email", user.getUsername());
			 
			 LogicalExpression expression=Restrictions.or(username,email);
			 
			 Criterion passowrd=Restrictions.eq("password", cryptedPassword);
			 Criterion status=Restrictions.eq("status",1);
			 
			 LogicalExpression expression2=  Restrictions.and(expression, passowrd);
			 
			 List<User> users= criteria.add(Restrictions.and(expression2, status)).list();
		
			/* List<User> users=criteria.add(Restrictions.and(Restrictions.and(Restrictions.eq("username", user.getUsername()), Restrictions.eq("password", 
						cryptedPassword)), Restrictions.eq("status",1)) ).list();
			
	*/
			 System.out.println("size"+users.size());
			 if(users.size()==1)
			 {
				 return users.get(0);
			 }
			 else
			 {
				 return null;
			 }
			
	}

	@Transactional
	public void saveUser(User user)
	{
		Session session=factory.getSession();

		session.save(user);
		//session.close();
		
		
	}
	@Transactional
	public List<User> getUserList() {
		Session session=factory.getSession();
		@SuppressWarnings("unchecked")
		List<User> users=session.createCriteria(User.class).addOrder(Order.desc("enrollmentDate")).list();	
		return users;
	}
	
	@Transactional
	public User getUserById(int id) {
		Session session=factory.getSession();
		User user=(User) session.get(User.class, id);
		return user;
	}
	
	
	@Transactional
	public void updateUser(User user) {
		Session session=factory.getSession();
		
		user.setUpdateDate(new Date());
		session.update(user);
		
	}
	
	
	
}
