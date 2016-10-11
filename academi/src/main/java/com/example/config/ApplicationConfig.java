package com.example.config;

import javax.sql.DataSource;

import org.apache.commons.dbcp2.BasicDataSource;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.io.ClassPathResource;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

//Spring core에 대한 설정
@Configuration
@PropertySource("classpath:/config/dbconfig.properties")
@ComponentScan({"com.example.repo","com.example.service"})
@EnableTransactionManagement
public class ApplicationConfig {
	static Logger logger = LoggerFactory.getLogger(ApplicationConfig.class);
	
	@Bean
	public PlatformTransactionManager transactionManager(DataSource ds){
		PlatformTransactionManager tm = new DataSourceTransactionManager(ds);
		return tm;
	}
	
	@Bean
	public DataSource dataSource(@Value("${db.driverClassName}") String driverClassName, @Value("${db.url}") String url,
			@Value("${db.username:hr}") String userName, @Value("${db.password:tiger}") String password,
			@Value("${db.maxTotal:10}") int maxTotal, @Value("${db.initialSize:3}") int initialSize,
			@Value("${db.maxIdle:5}") int maxIdle) {
		logger.trace("값:{}", driverClassName);
		BasicDataSource ds = new BasicDataSource();
		ds.setDriverClassName(driverClassName);
		ds.setUrl(url);
		ds.setUsername(userName);
		ds.setPassword(password);
		ds.setMaxTotal(maxTotal);
		ds.setInitialSize(initialSize);
		ds.setMaxIdle(maxIdle);
		return ds;
	}
	@Bean
	public SqlSessionFactoryBean sqlSessionFactoryBean(DataSource ds) {
		SqlSessionFactoryBean bean = new SqlSessionFactoryBean();
		bean.setDataSource(ds);
		String loc = "/mybatis/mybatis-config.xml";
		bean.setConfigLocation(new ClassPathResource(loc));
		return bean;
	}

	@Bean
	public SqlSessionTemplate sqlSessionTemplate(SqlSessionFactoryBean sfb)throws Exception{
		SqlSessionTemplate template = new SqlSessionTemplate(sfb.getObject());
		return template;
	}
	
	//파일업로드를 위한 빈
	@Bean
	public CommonsMultipartResolver multipartResover(){
		CommonsMultipartResolver resolver = new CommonsMultipartResolver();
		resolver.setDefaultEncoding("utf-8");
		return resolver;
	}
}
