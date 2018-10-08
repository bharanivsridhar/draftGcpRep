package com.resoursetechmapping.dao;

import com.resoursetechmapping.bean.ResourceBean;

public interface ResourceBeanDao {
	
public void addResourece(ResourceBean resource);
public ResourceBean getResource(String idOrName);
}
