package com.resoursetechmapping.controller;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.resoursetechmapping.bean.ResourceBean;
import com.resoursetechmapping.service.ResourceBeanService;

@RestController
public class ResourceBeanController {
	private final Logger logger = Logger.getLogger(ResourceBeanController.class);
	@Autowired
	private ResourceBeanService resourceService;

	@RequestMapping(value = "/hello", method = RequestMethod.GET)
	public ModelAndView welcomePage(Model model) {
		return new ModelAndView("resource", "command", new ResourceBean());
	}

	/**
	 * This method used insert the resource into Database
	 */
	@RequestMapping(value = "/addResource", method = RequestMethod.POST, produces = { "application/JSON" })
	public void addResource(@ModelAttribute("resourceBean") ResourceBean resource) {
		logger.info("addResource method will begin");
		resourceService.addResourece(resource);
		logger.info("addResource method completed");

	}

	/**
	 * This method used insert the resource into Database
	 */
	// @RequestMapping(value = "/getResource/{id:[A-Za-z0-9]+}", method =
	// RequestMethod.GET)
	// public ModelAndView getResource(@PathVariable("id") String idOrName) {
	// ResourceBean resourceResult = resourceService.getResource(idOrName);
	// System.out.println("Resource Result Is ->"+resourceResult.toString());
	// return new ModelAndView("resource", "resourceResult", resourceResult);
	// }
	/**
	 * This method used insert the resource into Database
	 */
	@RequestMapping(value = "/getResource/{id:[A-Za-z0-9]+}", method = RequestMethod.GET)
	public String getResource(@PathVariable("id") String idOrName) {
		logger.info("getResource method entered");
		ResourceBean resourceResult = resourceService.getResource(idOrName);
		logger.info("Get Resource method completed !!!");
		return resourceResult.toString();
	}
}
