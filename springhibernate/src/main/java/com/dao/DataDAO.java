package com.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.entities.Data;

@Component
public class DataDAO {
	@Autowired
	HibernateTemplate hibernateTemplate;

	@Transactional
	public int save(Data d) {
		Integer i=(Integer) this.hibernateTemplate.save(d);
		return i;		
	}
	public List<Data> getall()
	{
		List<Data> datas = this.hibernateTemplate.loadAll(Data.class);	
		return datas;
	}
	
	
}
