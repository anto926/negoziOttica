package it.corso.configuration;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

public class DispatcherServlet extends AbstractAnnotationConfigDispatcherServletInitializer {

	//è sempre fatto così, non si tocca mai dopo averlo creato
	@Override
	protected Class<?>[] getRootConfigClasses() {
		return null;
	}

	@Override
	protected Class<?>[] getServletConfigClasses() {  //stabilire un collegamento tra il displatcher e ioc container
		return new Class[] {ContextConfiguration.class}; //collegamento
	}

	@Override
	protected String[] getServletMappings() {  //serve al displatcher per definire a chi indirizzare le varie richieste, i vari rami 
		return new String[] {"/"};
	}

}
