package com.resoursetechmapping.serviceimpl;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.resoursetechmapping.bean.ResourceBean;
import com.resoursetechmapping.dao.ResourceBeanDao;
import com.resoursetechmapping.service.ResourceBeanService;

@Service
public class ResourceBeanServiceImpl implements ResourceBeanService {
	private final Logger logger = Logger.getLogger(ResourceBeanServiceImpl.class);
	@Autowired
	private ResourceBeanDao resourceDao;

	public void addResourece(ResourceBean resource) {
		logger.info("Service layer -:addResourece method called");
		resourceDao.addResourece(resource);
		logger.info("Service layer -:addResourece method completed");
	}

	public ResourceBean getResource(String idOrName) {
		logger.info("Service layer -:getResource method called");
		ResourceBean resourceBean = resourceDao.getResource(idOrName);
		logger.info("Service layer -:getResource method completed");
		return resourceBean;
	}
}
