package pl.office.controller;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

import org.apache.commons.validator.routines.EmailValidator;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import pl.office.model.User;
import pl.office.repository.UserRepository;
@Controller
public class UserController {
	
    private static final Logger LOGGER = LoggerFactory.getLogger(UserController.class);
	
	@Autowired
	private UserRepository userRepo;
	/*
	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;*/
	
	@GetMapping("/register")
	public String registerUser(Model model)
	{
		return "users/register";
	}
	
	@PostMapping("/register")
	public String registerUserPOST(Model model, @RequestParam String role, @RequestParam String username,
			@RequestParam String password, @RequestParam String email) {
		List<User> listOfUsers = userRepo.findAll();
		String exists = "false";
		boolean isValidEmail = EmailValidator.getInstance().isValid(email);
		boolean doesUsernameExists = listOfUsers.stream()
				.filter(u -> u.getUsername().trim().equalsIgnoreCase(username)).collect(Collectors.toList())
				.isEmpty();
		boolean doesEmailExists = listOfUsers.stream()
				.filter(u -> u.getEmail().trim().equalsIgnoreCase(email)).collect(Collectors.toList())
				.isEmpty();
		
		if(!isValidEmail)
		{
			return "users/register";
		}
		
		if (doesEmailExists && doesUsernameExists) {
			User user = new User();
			user.setUsername(username);
			user.setEmail(email);
			user.setPassword(password);
			user.setStatus("1");
			user.setRole(role);
			userRepo.save(user);
			LOGGER.info("Dodano użytkownika: \n" + user.toString());
			return "users/registerSuccess";
		} else {
			exists = "true";
		}
		LOGGER.info("Proba dodania uzytkownika ktory istnieje w bazie.");
		model.addAttribute("exists", exists);
		return "users/register";
	}
	
	@RequestMapping({"/","/users"})
	public String showAllUsers(Model model)
	{
		List<User> listOfAllUsers = userRepo.findAll();
		model.addAttribute("listOfAllUsers",listOfAllUsers);
		return "users/listUsers";
	}
	
	@GetMapping("/editUser")
	public String editUser(Model model, @RequestParam Long id)
	{
		Optional<User> user = userRepo.findById(id);
		String email = user.get().getEmail();
		String username = user.get().getUsername();
		model.addAttribute("id", id);
		model.addAttribute("email", email);
		model.addAttribute("username", username);
		return "users/editUser";
	}
	
	@PostMapping("/editUser")
	public String editUserSuccess(Model model, @RequestParam String password, @RequestParam Long id,
			@RequestParam String email) {
		Optional<User> userOpt = userRepo.findById(id);
		if(userOpt.isPresent()) 
			{
				User user = userOpt.get();
				user.setPassword(password);
				if (!user.getEmail().toUpperCase().trim().equalsIgnoreCase(email)) {
					user.setEmail(email);
				}
				userRepo.save(user);
				LOGGER.info("Hasło dla użytkownika: " + user.getUsername() + " zostało zmienione.");
				model.addAttribute("id", id);
				return "redirect:/editUser?success=true&id="+id;
			}else 
				{	
					model.addAttribute("id", id);
					return "redirect:/editUser?success=false&id="+id;
				}
	}
	
	@PostMapping("/register/success")
	public String registerSuccess(Model model)
	{
		List<User> listOfAllUsers = userRepo.findAll();
		model.addAttribute("listOfAllUsers",listOfAllUsers);
		return "users/registerSuccess";
	}
	
	@PostMapping("/changeStatus")
	public String changeStatus(Model model, @RequestParam Long id)
	{
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
		model.addAttribute("listOfAllUsers",listOfAllUsers);
		return "users/listUsers";
	}

}
