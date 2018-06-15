package pl.office.configuration;

import java.io.IOException;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

@Component
public class OnLoginSuccesAuthHandler implements AuthenticationSuccessHandler {
	/**
	 * @author smantaj Warunkowanie przekierowań an podstawie roli z httprequesta.
	 *         Jeżeli rola posiada ciąg znakow "ADMIN" wchodzi w ifa i przekierowuje
	 *         na "/admin/home", jeżeli posiada inną rolę niż "ADMIN" wyrzuca elsa i
	 *         przekierowuje na "/userpage".
	 * 
	 *         W przyszłości przy dodawaniu większej ilości użytkownikow o innych
	 *         rolach niż "ADMIN" czy "USER" można śmiało rozbudować ten handler o
	 *         inne przekierowania.
	 */

	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response, Authentication auth)
			throws IOException, ServletException {
		Set<String> roles = AuthorityUtils.authorityListToSet(auth.getAuthorities());

		if (roles.contains("ADMIN")) {
			response.sendRedirect("/homepage");
		} else {
			response.sendRedirect("/homepage");
		}

	}

}
