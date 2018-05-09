package pl.office.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import pl.office.model.User;
import pl.office.repository.UserRepository;
import pl.office.services.Filtr;
import pl.office.services.SearchResults;

@Controller
public class MainController {

	private static final Logger LOGGER = LoggerFactory.getLogger(MainController.class);
	
	@Autowired
	private UserRepository userRepo;

	@PostMapping("/filtrujStudentow")
	public String filtrujStudentow(@ModelAttribute("filtr") Filtr filtr, HttpServletRequest request, Model model) {
		
		LOGGER.info(filtr.toString());
		SearchResults szukaj = new SearchResults();
		List<User> listaFiltrowana = szukaj.searchStudents(filtr, userRepo);
		model.addAttribute("listaStudentow", listaFiltrowana);
		return "/students/listStudents";
	}

	@PostMapping("/filtrujPracownikow")
	public String filtrujPracownikow(Filtr filtr, Model model) {
		SearchResults szukaj = new SearchResults();
		List<User> listaFiltrowana = szukaj.searchWorkers(filtr, userRepo);
		model.addAttribute("listaPracownikow", listaFiltrowana);
		return "/workers/listWorkers";
	}

}
