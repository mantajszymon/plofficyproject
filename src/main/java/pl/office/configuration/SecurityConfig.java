package pl.office.configuration;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

	@Autowired
	OnLoginSuccesAuthHandler onLoginSuccesAuthHandler;

	@Autowired
	private PasswordEncoder passwordEncoder;

	@Autowired
	private DataSource dataSource;

	@Value("${spring.queries.users-query}")
	private String usersQuery;

	@Value("${spring.queries.roles-query}")
	private String rolesQuery;

	/**
	 * Konfiguracja SpringSecurity
	 */
	@Override
	public void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.jdbcAuthentication().dataSource(dataSource).passwordEncoder(passwordEncoder)
				.usersByUsernameQuery(usersQuery).authoritiesByUsernameQuery(rolesQuery);
	}

	/**
	 * Konfiguracja na jakich sciezkach ma dzialac SpringSecurity. Główna
	 * funkcjonalność jest taka: jeżeli ścieżka posiada w sobie "/admin" dostęp
	 * do niej będzie udzielony tylko po zalogowaniu z rolą admina. Poza tym
	 * zadefiniowane domyślne przekierowania: failureUrl (po błędnym logowaniu),
	 * loginPage(strona logowania) logoutSuccesUrl(strona po wylogowaniu),
	 * accesDeniedPage(strona po nie udzieleniu dostępu)
	 * 
	 * succesHandler warunkuje przekierowanie na podstawie roli użytkownika
	 */
	@Override
	public void configure(HttpSecurity http) throws Exception {
		http.authorizeRequests()
		.antMatchers("/").permitAll()
		.antMatchers("/login").permitAll()
		.antMatchers("/styles/*").permitAll()
		.antMatchers("/scripts/*").permitAll()
		.antMatchers("/secret").permitAll()
		.antMatchers("/register/*").hasAuthority("ADMIN").anyRequest().authenticated()
		.antMatchers("/register").hasAuthority("ADMIN").anyRequest().authenticated()
		.antMatchers("/homepage").authenticated()
		.antMatchers("/users/**").hasAnyAuthority("USER","ADMIN").anyRequest().authenticated()
		.antMatchers("/workers/**").hasAnyAuthority("USER","ADMIN").anyRequest().authenticated()
		.antMatchers("/students/**").hasAnyAuthority("USER","ADMIN").anyRequest().authenticated()
		.antMatchers("/admin/**").hasAuthority("ADMIN").anyRequest().authenticated()
		.and().csrf().disable().formLogin().loginPage("/login").failureUrl("/login?error=true")
		.successHandler(onLoginSuccesAuthHandler).usernameParameter("username").passwordParameter("password")
		.and().logout().logoutRequestMatcher(new AntPathRequestMatcher("/logout")).logoutSuccessUrl("/login").and()
		.exceptionHandling().accessDeniedPage("/denied");
	}



}
