package pl.office.configuration;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class StaticResourcesConfiguration implements WebMvcConfigurer{
	
	@Value("${static.content}")
	private String staticContent;
	
	@Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/**", "**/")
        .addResourceLocations("file:" + staticContent)
        .setCachePeriod(0);
        
    }
	
}
