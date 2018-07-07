package pl.office.controller;

import java.security.Principal;
import java.util.LinkedList;
import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
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
import pl.office.services.ValidateUser;

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

	@Autowired
	private PasswordEncoder passwordEncoder;

	@RequestMapping("/")
<<<<<<< HEAD
	public String redirectToHomePage(){
=======
	public String returnToHomePage(Model model) {
>>>>>>> 63cfe377b0ea7df9ff7b654b19585bab9498a029
		return "redirect:/homepage";
	}
	
	@RequestMapping({ "/homepage" })
	public String homePage(Model model, HttpServletRequest req, Principal principal, HttpSession session) {

		Principal currentUser = req.getUserPrincipal();
		if (currentUser != null) {
			String username = currentUser.getName();
			User userLogged = userRepo.findByUsername(username);
			session.setAttribute("userLogged", userLogged);
		}
		/*
		 * Principal currentUser = req.getUserPrincipal(); if (currentUser !=
		 * null) { LOGGER.debug(currentUser.getName()); }
		 */
		return "homepage";
	}

	@GetMapping("/register")
	public String registerUser(Model model, HttpSession session) {
		
		if (!isAdminUser(session)) {
			return "denied";
		}
		
		User user = new User();
		UserDetails uD = new UserDetails();
		Address adres = new Address();
		UserTypeDetails uTD = new UserTypeDetails();
		List<PlanZajec> zajecia = new LinkedList<PlanZajec>();
		user.setPlanZajec(zajecia);
		user.setAddress(adres);
		user.setUserDetails(uD);
		user.setUserTypeDetails(uTD);

		model.addAttribute("user", user);
		return "users/registerStep1";
	}

	@PostMapping("/register/registerStep1")
	public String registerUserPOST(Model model, @ModelAttribute("user") User user, BindingResult bindRes,
			HttpSession session) {
		if (!isAdminUser(session)) {
			return "denied";
		}
		
		LOGGER.info("WPADLEM DO TEJ METODY STEP1");
		String errorResult = new ValidateUser().validateAllStep1RegisterFields(user, userRepo);
		
//		if (StringUtils.isBlank(errorResult)) {
			user.setPassword(passwordEncoder.encode(user.getPassword()));
			session.setAttribute("user", user);
			model.addAttribute("user", user);
			return "redirect:/register/registerStep2";
		/*} else {
			model.addAttribute("errorResult", errorResult);
			return "users/registerStep1";
		}*/
	}

	@GetMapping("/register/registerStep2")
	public String registerStep2GET(Model model, HttpSession session) {
		
		if (!isAdminUser(session)) {
			return "denied";
		}
		
		if (session.getAttribute("user") != null) {
			User user = (User) session.getAttribute("user");
			/*
			 * List<PlanZajec> zajecia = new LinkedList<PlanZajec>();
			 * user.setPlanZajec(zajecia);
			 */
			model.addAttribute("typ", user.getUserDetails().getTyp());
			model.addAttribute("user", user);
			return "users/registerStep2";
		} else
			return "redirect:/homepage";
	}

	@PostMapping("/register/registerStep2")
	public String registerStep2POST(Model model, HttpSession session, @ModelAttribute("user") User user,
			BindingResult bindRes) {
		
		if (!isAdminUser(session)) {
			return "denied";
		}
		
		String errorResult = new ValidateUser().validateAllStep2RegisterFields(user, userRepo);
		if (!StringUtils.isBlank(errorResult)) {
			model.addAttribute("typ", user.getUserDetails().getTyp());
			model.addAttribute("user", user);
			model.addAttribute("errorResult", errorResult);
			return "users/registerStep2";
		}
		
		user.setStatus("1");
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

	@GetMapping("/admin/editUser")
	public String editUser(Model model, HttpSession session, @RequestParam Long id) {

		if (!isAdminUser(session)) {
			return "denied";
		}
		Optional<User> userOPT = userRepo.findById(id);
		User user = userOPT.get();
		LOGGER.info("DAUDSOADA: " + user.toString());
		model.addAttribute("user", user);
		return "users/editUser";
	}

	@PostMapping("/admin/editUser")
	public String editUserSuccess(Model model, HttpSession session, @ModelAttribute("user") User user) {

		if (!isAdminUser(session)) {
			return "denied";
		}

		userRepo.save(user);
		LOGGER.info("Użytkownik " + user.getUsername() + " został zmieniony.");
		model.addAttribute("id", user.getId());
		return "redirect:/admin/editUser?success=true&id=" + user.getId();
	}

	@GetMapping("/secret")
	public String secretMethod(Model model, HttpSession session) {
		User user = null;
		UserDetails uD = new UserDetails();
		Address adres = new Address();
		UserTypeDetails uDT = new UserTypeDetails();
		user = userRepo.findByEmail("mantajszymon@gmail.com");
		if (user == null) {
			user = new User();
			user.setEmail("mantajszymon@gmail.com");
			user.setPassword(passwordEncoder.encode("admin123!"));
			user.setRole("ADMIN");
			user.setStatus("1");
			user.setUsername("admin");

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
		}
		return "redirect:/login";
	}

	@RequestMapping("/login")
	public String loginPage(Model model) {
		return "login";
	}

	@RequestMapping("/denied")
	public String deniedPage(Model model) {
		return "denied";
	}


	@PostMapping("/register/success")
	public String registerSuccess(Model model) {
		List<User> listOfAllUsers = userRepo.findAll();
		model.addAttribute("listOfAllUsers", listOfAllUsers);
		return "users/registerSuccess";
	}

	@PostMapping("/users/changeStatus")
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

	@RequestMapping("/admin/usunUzytkownika/{id}")
	public String deleteUser(Model model, HttpSession session, @PathVariable("id") String id) {

		if (!isAdminUser(session)) {
			return "denied";
		}

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
		return "redirect:/users";
	}

	public boolean isAdminUser(HttpSession session) {
		if (session.getAttribute("userLogged") != null) {
			User user = (User) session.getAttribute("userLogged");
<<<<<<< HEAD
			if (user.getRole().equalsIgnoreCase("admin"))
=======
			if (user.getRole().equalsIgnoreCase("admin") && user.getStatus().equals("1"))
>>>>>>> 63cfe377b0ea7df9ff7b654b19585bab9498a029
				return true;
			else
				return false;
		} else
			return false;
	}

}
