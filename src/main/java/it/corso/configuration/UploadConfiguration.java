package it.corso.configuration;

import java.io.IOException;

import org.springframework.context.ResourceLoaderAware;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.Resource;
import org.springframework.core.io.ResourceLoader;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

@Configuration
public class UploadConfiguration implements ResourceLoaderAware {		//si occupa soltanto della configurazione dell'upload

	private ResourceLoader resourceLoader;		//serve per poter accedere alla directory temporanea in cui viene parcheggiato il file quando lo scegliamo dall'input del form
	
	@Override
	public void setResourceLoader(ResourceLoader resourceLoader) {
		this.resourceLoader = resourceLoader;
	}			
	
	@Bean
	public CommonsMultipartResolver multipartResolver() {
		CommonsMultipartResolver resolver = new CommonsMultipartResolver();
		resolver.setDefaultEncoding("UTF-8");
		resolver.setMaxUploadSizePerFile(3_145_728); 		//indica il peso massimo del file da poter caricare, 3 mb in questo caso
		resolver.setMaxInMemorySize(0); 					//non utilizzare mai lo spazio di memoria dedicato all'applicazione per salvare i file 
		Resource uploadTempDir = resourceLoader.getResource("/tmp");	//recupera la risorsa e permette di identificare la cartella temporanea in cui è momentaneamente salvato il file 
		try {
			resolver.setUploadTempDir(uploadTempDir);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return resolver;
	}

	
}
