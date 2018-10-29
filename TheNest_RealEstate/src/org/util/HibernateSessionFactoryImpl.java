package org.util;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
//   Database Connection   
public class HibernateSessionFactoryImpl  implements HibernateSessionFactory {

	private SessionFactory sessionFactory;

    @Override
    public Session getSession() {
        return this.sessionFactory.getCurrentSession();
    }

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }
}
