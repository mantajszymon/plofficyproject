package pl.office.services;

import java.util.List;
import java.util.stream.Collectors;

import org.apache.commons.lang3.StringUtils;
import org.apache.commons.validator.routines.EmailValidator;

import pl.office.model.User;
import pl.office.repository.UserRepository;

public class ValidateUser {

	public String validateAllUserFields(User user, UserRepository userRepo) {
		String errorResult = "";
		List<User> listOfUsers = userRepo.findAll();

		if (user.getUserDetails() != null) {
			if (user.getUserDetails().getPESEL() != null) {
				if (user.getUserDetails().getPESEL().toString().length() != 11) {
					errorResult = "Podaj poprawny numer PESEL";
				}
			}
		}

		if (StringUtils.isBlank(user.getPassword())) {
			errorResult = "Hasło nie może być puste.";
		}

		if (EmailValidator.getInstance().isValid(user.getEmail())) {
			errorResult = "Podaj poprawny adres e-mail.";
		}

		if (listOfUsers.stream().filter(u -> u.getEmail().trim().equalsIgnoreCase(user.getEmail()))
				.collect(Collectors.toList()).isEmpty()) {
			errorResult = "Podany e-mail istnieje w bazie danych.";
		}

		if (listOfUsers.stream().filter(u -> u.getUsername().trim().equalsIgnoreCase(user.getUsername()))
				.collect(Collectors.toList()).isEmpty()) {
			errorResult = "Podany login istnieje w bazie danych.";
		}

		return errorResult;
	}

}
