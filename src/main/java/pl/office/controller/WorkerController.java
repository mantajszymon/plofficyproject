package pl.office.controller;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import pl.office.model.User;
import pl.office.repository.AddressRepository;
import pl.office.repository.UserDetailsRepository;
import pl.office.repository.UserRepository;

@Controller
public class WorkerController {

	private static final Logger LOGGER = LoggerFactory.getLogger(WorkerController.class);

	@Autowired
	private UserRepository userRepo;

	@Autowired
	private AddressRepository addressRepo;

	@Autowired
	private UserDetailsRepository userDetailsRepo;

	@PostMapping("/workers")
	public String listWorkers(Model model) {
		List<User> listaUserow = userRepo.findAll();
		List<User> listaPracownikow = listaUserow.stream().filter(u -> u.getUserDetails().getTyp().equals("nauczyciel") || u.getUserDetails().getTyp().equals("sekretariat"))
				.collect(Collectors.toList());

		model.addAttribute("listaPracownikow", listaPracownikow);
		return "workers/listWorkers";
	}

	@GetMapping("/podgladPracownika/{id}")
	public String podlgadPracownika(Model model, @PathVariable("id") String id) {
		Optional<User> pracownik = userRepo.findById(Long.parseLong(id));
		model.addAttribute("pracownik", pracownik.get());
		return "workers/viewWorker";
	}
	
	
}
