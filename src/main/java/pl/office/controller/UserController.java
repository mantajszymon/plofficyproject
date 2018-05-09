package pl.office.controller;

import java.util.LinkedList;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

import javax.servlet.http.HttpSession;

import org.apache.commons.validator.routines.EmailValidator;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import pl.office.model.Address;
import pl.office.model.PlanZajec;
import pl.office.model.User;
import pl.office.model.UserDetails;
import pl.office.model.UserTypeDetails;
import pl.office.repository.AddressRepository;
import pl.office.repository.UserDetailsRepository;
import pl.office.repository.UserRepository;
import pl.office.repository.UserTypeDetailsRepository;

@Controller
public class UserController {

	private static final Logger LOGGER = LoggerFactory.getLogger(UserController.class);

	@Autowired
	private UserRepository userRepo;

	@Autowired
	private AddressRepository addressRepo;

	@Autowired
	private UserDetailsRepository userDetailsRepo;

	@Autowired
	private UserTypeDetailsRepository userTypeDetailsRepo;
	/*
	 * @Autowired private BCryptPasswordEncoder bCryptPasswordEncoder;
	 */

	@RequestMapping("/")
	public String homePage(Model model) {
		return "homepage";
	}

	@GetMapping("/register")
	public String registerUser(Model model) {
		User user = new User();
		UserDetails uD = new UserDetails();
		Address adres = new Address();
		user.setAddress(adres);
		user.setUserDetails(uD);

		model.addAttribute("user", user);
		return "users/registerStep1";
	}

	@PostMapping("/registerStep1")
	public String registerUserPOST(Model model, @ModelAttribute("user") User user, BindingResult bindRes,
			HttpSession session) {
		LOGGER.info("WPADLEM DO TEJ METODY STEP1");
		List<User> listOfUsers = userRepo.findAll();
		String exists = "false";
		boolean isValidEmail = EmailValidator.getInstance().isValid(user.getEmail());
		boolean noSuchUsername = listOfUsers.stream()
				.filter(u -> u.getUsername().trim().equalsIgnoreCase(user.getUsername())).collect(Collectors.toList())
				.isEmpty();
		boolean noSuchEmail = listOfUsers.stream().filter(u -> u.getEmail().trim().equalsIgnoreCase(user.getEmail()))
				.collect(Collectors.toList()).isEmpty();

		if (!isValidEmail) {
			model.addAttribute("isValidEmail", isValidEmail);
			return "users/registerStep1";
		}

		if (noSuchEmail && noSuchUsername) {
			// LOGGER.info("JESTEM TUTAJ W IFIE");
			session.setAttribute("user", user);
			model.addAttribute("user", user);
			return "redirect:/registerStep2";
		} else {
			exists = "true";
		}

		LOGGER.info("Proba dodania uzytkownika ktory istnieje w bazie.");
		model.addAttribute("exists", exists);
		return "users/registerStep1";
	}

	@GetMapping("/registerStep2")
	public String registerStep2GET(Model model, HttpSession session) {
		if (session.getAttribute("user") != null) {
			User user = (User) session.getAttribute("user");
			UserTypeDetails uTD = new UserTypeDetails();
			List<PlanZajec> zajecia = new LinkedList<PlanZajec>();
			user.setUserTypeDetails(uTD);
			user.setPlanZajec(zajecia);
			LOGGER.info("TO JEST NASZ UZYTKOWNIK: " + user.toString());
			model.addAttribute("typ", user.getUserDetails().getTyp());
			model.addAttribute("user", user);
			return "users/registerStep2";
		} else
			return "redirect:/";
	}

	@PostMapping("/registerStep2")
	public String registerStep2POST(Model model, HttpSession session, @ModelAttribute("user") User user,
			BindingResult bindRes) {

		userRepo.save(user);
		LOGGER.info("Użytkownik dodany do bazy: " + user.toString());
		session.removeAttribute("user");
		return "users/registerSuccess";
	}

	@RequestMapping("/users")
	public String showAllUsers(Model model) {
		List<User> listOfAllUsers = userRepo.findAll();
		model.addAttribute("listOfAllUsers", listOfAllUsers);
		return "users/listUsers";
	}

	@GetMapping("/editUser")
	public String editUser(Model model, @RequestParam Long id) {
		Optional<User> userOPT = userRepo.findById(id);
		User user = userOPT.get();
		LOGGER.info("DAUDSOADA: " + user.toString());
		model.addAttribute("user", user);
		return "users/editUser";
	}

	@PostMapping("/editUser")
	public String editUserSuccess(Model model, @ModelAttribute("user") User user) {
		userRepo.save(user);
		LOGGER.info("Użytkownik " + user.getUsername() + " został zmieniony.");
		model.addAttribute("id", user.getId());
		return "redirect:/editUser?success=true&id=" + user.getId();
	}

	@GetMapping("/secret")
	public String secretMethod(Model model, HttpSession session) {
		User user = new User();
		UserDetails uD = new UserDetails();
		Address adres = new Address();
		UserTypeDetails uDT = new UserTypeDetails();
		user.setEmail("mantajszymon@gmail.com");
		user.setPassword("123");
		user.setRole("ADMIN");
		user.setStatus("1");
		user.setUsername("smantaj");

		uD.setImie("szymon");
		uD.setNazwisko("mantaj");
		uD.setNrTelefonuPrywatny(Long.valueOf(503356204));
		uD.setNrTelefonuSluzbowy(Long.valueOf(503356204));
		uD.setPESEL(Long.valueOf("95062006495"));
		uD.setPlec("M");
		uD.setTyp("student");

		uDT.setNrIndeksu("195012");
		uDT.setWydzial("EEIA");
		uDT.setKierunek("Informatyka");
		uDT.setRok("3");
		uDT.setSemestr("6");
		uDT.setStopienStudiow("I");

		adres.setKraj("Polska");
		adres.setKodPocztowy("95-200");
		adres.setMiasto("Pabianice");
		adres.setNrDomu("32");
		adres.setNrUlicy("14");
		adres.setUlica("Podlesna");

		user.setAddress(adres);
		user.setUserDetails(uD);
		user.setUserTypeDetails(uDT);
		userRepo.save(user);
		return "redirect:/";
	}

	@PostMapping("/register/success")
	public String registerSuccess(Model model) {
		List<User> listOfAllUsers = userRepo.findAll();
		model.addAttribute("listOfAllUsers", listOfAllUsers);
		return "users/registerSuccess";
	}

	@PostMapping("/changeStatus")
	public String changeStatus(Model model, @RequestParam Long id) {
		User user = userRepo.findById(id).get();
		if (!user.getRole().equalsIgnoreCase("ADMIN")) {
			if (user.getStatus().equals("1")) {
				user.setStatus("0");
				userRepo.save(user);
				LOGGER.info("Dezaktywowano użytkownika: " + user.getUsername());
			} else if (user.getStatus().equals("0")) {
				user.setStatus("1");
				userRepo.save(user);
				LOGGER.info("Aktywowano użytkownika: " + user.getUsername());
			}
		}
		List<User> listOfAllUsers = userRepo.findAll();
		model.addAttribute("listOfAllUsers", listOfAllUsers);
		return "users/listUsers";
	}

	@GetMapping("/usunUzytkownika/{id}")
	public String deleteUser(Model model, @PathVariable("id") String id) {
		Optional<User> user = userRepo.findById(Long.parseLong(id));
		if (user.get().getUserTypeDetails() != null) {
			Long idUTD = user.get().getUserTypeDetails().getId();
			Optional<UserTypeDetails> uTD = userTypeDetailsRepo.findById(idUTD);
			if (uTD.get() != null) {
				UserTypeDetails uTDr = uTD.get();
				userTypeDetailsRepo.delete(uTDr);
			}
		}
		if (user.get().getUserDetails() != null) {
			Long idUD = user.get().getUserDetails().getId();
			Optional<UserDetails> uD = userDetailsRepo.findById(idUD);
			if (uD.get() != null) {
				UserDetails uDr = uD.get();
				userDetailsRepo.delete(uDr);
			}
		}
		if (user.get().getAddress() != null) {
			Long addressID = user.get().getAddress().getId();
			Optional<Address> adres = addressRepo.findById(addressID);
			if (adres.get() != null) {
				Address adresR = adres.get();
				addressRepo.delete(adresR);
			}
		}
		User userR = user.get();
		userRepo.delete(userR);
		List<User> listOfAllUsers = userRepo.findAll();
		model.addAttribute("listOfAllUsers", listOfAllUsers);
		return "users/listUsers";
	}

}
