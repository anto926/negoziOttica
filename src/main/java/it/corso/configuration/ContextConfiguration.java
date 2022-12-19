package it.corso.configuration;

import javax.persistence.SharedCacheMode;
import javax.persistence.ValidationMode;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.context.support.ResourceBundleMessageSource;
import org.springframework.core.env.Environment;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.jpa.JpaTransactionManager;
import org.springframework.orm.jpa.JpaVendorAdapter;
import org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean;
import org.springframework.orm.jpa.vendor.HibernateJpaVendorAdapter;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.validation.Validator;
import org.springframework.validation.beanvalidation.LocalValidatorFactoryBean;
import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.thymeleaf.spring5.SpringTemplateEngine;
import org.thymeleaf.spring5.templateresolver.SpringResourceTemplateResolver;
import org.thymeleaf.spring5.view.ThymeleafViewResolver;
import org.thymeleaf.templatemode.TemplateMode;

@Configuration
@EnableWebMvc
@ComponentScan(basePackages = {"it.corso.controller", "it.corso.service", "it.corso.dao", "it.corso.configuration"})  //cerca i vari componenti da preparare e istanziare, così sono già pronti per l'utilizzo in maniera automatica
@EnableTransactionManagement //necessario per sfruttare database, transazioni= blocco dove racchiudiamo istruzioni singole che devono essere eseguite insieme perché collegate a livello logico. Con questa annotazione Spring si occupa delle transazioni
@PropertySource(value = {"classpath:application.properties"}) //percorso dove cercare le proprietà per i database
@EnableJpaRepositories(basePackages = {"it.corso.dao"}, entityManagerFactoryRef =  "emf", transactionManagerRef = "tmf") //sempre per db spring
public class ContextConfiguration implements WebMvcConfigurer{
	
	@Autowired
	private Environment env;		//questo oggetto ci permetterà di leggere il db

	@Override
	public void configureDefaultServletHandling(DefaultServletHandlerConfigurer configurer) {
		configurer.enable();
	}
	
	@Bean
	public MessageSource messageSource() {
		ResourceBundleMessageSource source = new ResourceBundleMessageSource();
		source.setBasename("message");   //percorso da cui recuperare risorse testuali da file esterni;
		return source;
	}
	
	@Bean
	public SpringResourceTemplateResolver templateResolver() { //andrà a cercare le varie view
		SpringResourceTemplateResolver resolver = new SpringResourceTemplateResolver();
		resolver.setPrefix("/WEB-INF/view/");  //dove dovrà andare a recuperare i file view
		resolver.setSuffix(".html"); //estensione dei file che deve cercare
		resolver.setTemplateMode(TemplateMode.HTML); //deve operare in html
		resolver.setCacheable(true); //per ottimizzare la visualizzazione dei file di view attraverso la cache
		return resolver;
	}
	
	@Bean
	public SpringTemplateEngine templateEngine() {	//ha dipendenze nei confronti di templateresolver e messagesource
		SpringTemplateEngine engine = new SpringTemplateEngine();
		engine.setTemplateResolver(templateResolver());  
		engine.setTemplateEngineMessageSource(messageSource());
		return engine;
	}
	
	@Bean
	public ThymeleafViewResolver viewResolver() {		
		ThymeleafViewResolver resolver = new ThymeleafViewResolver();
		resolver.setTemplateEngine(templateEngine());
		return resolver;
	}
	
	@Bean
	public LocalValidatorFactoryBean validator () {		//dipendenza controllo form
		LocalValidatorFactoryBean validator = new LocalValidatorFactoryBean();
		validator.setValidationMessageSource(messageSource());
		return validator;
	}

	@Override
	public Validator getValidator() {
		return validator();
	}
	
	@Bean(name = "dataSource")		
	public DataSource getDataSource() {
		DriverManagerDataSource dataSource = new DriverManagerDataSource();
		dataSource.setDriverClassName(env.getRequiredProperty("jdbc.driver"));
		dataSource.setUrl(env.getRequiredProperty("jdbc.url"));
		dataSource.setUsername(env.getRequiredProperty("jdbc.username"));
		dataSource.setPassword(env.getRequiredProperty("jdbc.password"));
		return dataSource;
	}
	
	@Bean
	public JpaVendorAdapter getJpaVendorAdapter() {		//adattore ORM, permette di acquisire i comandi ed effettua la traduzione in linguaggio SQL
		HibernateJpaVendorAdapter adapter = new HibernateJpaVendorAdapter();
		adapter.setShowSql(true); //quando invieremo le istruzioni in database vedremo grazie a lui il comando sql in console
		adapter.setGenerateDdl(false);	//permette ad hibernate di modificare la struttura del db, con false non può farlo
		adapter.setDatabasePlatform(env.getRequiredProperty("hibernate.dialect"));
		return adapter;
	}
	
	@Bean(name = "emf")
	public LocalContainerEntityManagerFactoryBean getEntityManagerFactoryBean() {		//per funzionare crea dipendenze con i metodi getJpaVendorAdapter e getDataSource
		LocalContainerEntityManagerFactoryBean bean = new LocalContainerEntityManagerFactoryBean();
		bean.setJpaVendorAdapter(getJpaVendorAdapter());
		bean.setDataSource(getDataSource());
		bean.setPackagesToScan("it.corso.model");		//controllare se il percorso è giusto
		bean.setSharedCacheMode(SharedCacheMode.ENABLE_SELECTIVE);  	//uso di cache per ottimizzare il processo
		bean.setValidationMode(ValidationMode.NONE);
		return bean;
	}
	
	@Bean(name = "tmf")
	public JpaTransactionManager getJpaTransactionManager() {
		JpaTransactionManager manager = new JpaTransactionManager();
		manager.setEntityManagerFactory(getEntityManagerFactoryBean().getObject());
		return manager;
	}
}
