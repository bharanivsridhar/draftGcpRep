package com.resoursetechmapping.service;

import com.resoursetechmapping.bean.ResourceBean;

public interface ResourceBeanService {
	
	public void addResourece(ResourceBean resource);
	public ResourceBean getResource(String idOrName);
}
