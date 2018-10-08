package com.resoursetechmapping.daoimpl;

import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.apache.log4j.Logger;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.resoursetechmapping.bean.ResourceBean;
import com.resoursetechmapping.dao.ResourceBeanDao;

class ResourceMapper implements RowMapper<ResourceBean> {

	public ResourceBean mapRow(ResultSet rs, int arg1) throws SQLException {
		ResourceBean resource = new ResourceBean();
		resource.setEmpId(rs.getLong("id"));
		resource.setFirstName(rs.getString("firstname"));
		resource.setMiddleName(rs.getString("middlename"));
		resource.setLastName(rs.getString("lasname"));
		resource.setListTechnology(rs.getString("technologies"));
		resource.setCertification(rs.getString("certification"));
		resource.setProjects(rs.getString("projects"));
		resource.setApplicationWorked(rs.getString("applicationtype"));
		return resource;
	}
}

@Repository
public class ResourceBeanDaoImpl implements ResourceBeanDao {
	private final Logger logger = Logger.getLogger(ResourceBeanDaoImpl.class);
	private JdbcTemplate jdbcTemplate;

	public ResourceBeanDaoImpl(DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);
	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	public void addResourece(ResourceBean resource) {
		logger.info("Resource Bean details are =>" + resource.toString());
		String addResourece = "insert into resource values(?,?,?,?,?,?,?,?)";
		try {
			jdbcTemplate.update(addResourece,
					new Object[] { resource.getEmpId(), resource.getFirstName(), resource.getMiddleName(),
							resource.getLastName(), resource.getListTechnology(), resource.getCertification(),
							resource.getProjects(), resource.getApplicationWorked() });
			logger.info("Resource Bean object saved into the database successfully !!!");
		} catch (Exception ex) {
			logger.info("Exception has occured :" + ex.getMessage());
			logger.info("Data not stored");
		}

	}

	public ResourceBean getResource(String idOrName) {
		logger.info("Entered Resource EmpId/Name =>" + idOrName);
		ResourceBean resourceResult = null;
		boolean searchingEmpId = false;
		String sql = "";
		for (int i = 0; i < idOrName.length(); i++) {
			if (Character.isDigit(idOrName.charAt(i))) {
				searchingEmpId = true;
			}
		}
		if (searchingEmpId) {
			sql = "SELECT * FROM resource WHERE id= ?";
		} else {
			sql = "SELECT * FROM resource WHERE firstname= ?";
		}
		try {
			resourceResult = jdbcTemplate.queryForObject(sql, new ResourceMapper(), idOrName);
			logger.info("Resource details retrived from DB =>" + resourceResult.toString());
		} catch (Exception ex) {
			logger.info("While Retriving the resource details error occured :" + ex.getMessage());
		}

		return resourceResult;
	}
}
