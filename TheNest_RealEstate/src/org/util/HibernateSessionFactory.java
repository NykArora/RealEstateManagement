package org.util;

import org.hibernate.Session;

public interface HibernateSessionFactory
{
	Session getSession();
}
