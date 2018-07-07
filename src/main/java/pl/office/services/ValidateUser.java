package pl.office.services;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import org.apache.commons.lang3.StringUtils;
import org.apache.commons.validator.routines.EmailValidator;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import pl.office.model.User;
import pl.office.repository.UserRepository;

public class ValidateUser {

	private static final Logger LOGGER = LoggerFactory.getLogger(ValidateUser.class);

	public String validateAllStep1RegisterFields(User user, UserRepository userRepo) {
		String errorResult = "";
		List<User> listOfUsers = userRepo.findAll();

		Map<Boolean, String> mapOfFields = allFieldsFilledStep1(user);
		if (!mapOfFields.isEmpty()) {
			errorResult = mapOfFields.get(false);
			LOGGER.info("allfields if: " + errorResult);
		}

		if (!listOfUsers.stream().filter(u -> u.getEmail().trim().equalsIgnoreCase(user.getEmail()))
				.collect(Collectors.toList()).isEmpty()) {
			errorResult = "Podany e-mail istnieje w bazie danych.";
			LOGGER.info("emailExist if: " + errorResult);
		}

		if (!listOfUsers.stream().filter(u -> u.getUsername().trim().equalsIgnoreCase(user.getUsername()))
				.collect(Collectors.toList()).isEmpty()) {
			errorResult = "Podany login istnieje w bazie danych.";
			LOGGER.info("userExist if: " + errorResult);
		}

		return errorResult;
	}

	public String validateAllStep2RegisterFields(User user, UserRepository userRepo) {
		String errorResult = "";

		Map<Boolean, String> mapOfFields = allFieldsFilledStep2(user);
		if (!mapOfFields.isEmpty()) {
			errorResult = mapOfFields.get(false);
			LOGGER.info("allfields if: " + errorResult);
		}

		return errorResult;
	}

	public Map<Boolean, String> allFieldsFilledStep2(User user) {
		Map<Boolean, String> result = new HashMap<Boolean, String>();

		if (user.getUserDetails().getTyp().equalsIgnoreCase("student")) {
			if (StringUtils.isBlank(user.getUserTypeDetails().getKierunek())) {
				result.put(false, "Podaj kierunek studiów.");
				return result;
			}
			if (StringUtils.isBlank(user.getUserTypeDetails().getNrIndeksu())) {
				result.put(false, "Podaj numer indeksu.");
				return result;
			}
		} else {
			if (StringUtils.isBlank(user.getUserTypeDetails().getIdentyfikator())) {
				result.put(false, "Podaj identyfikator pracownika.");
				return result;
			}
		}
		return result;
	}

	public Map<Boolean, String> allFieldsFilledStep1(User user) {
		Map<Boolean, String> result = new HashMap<Boolean, String>();

		if (StringUtils.isBlank(user.getUsername())) {
			result.put(false, "Username nie moze byc puste.");
			return result;
		}

		if (StringUtils.isBlank(user.getPassword())) {
			result.put(false, "Hasło nie moze byc puste.");
			return result;
		}

		if (StringUtils.isBlank(user.getEmail()) || !EmailValidator.getInstance().isValid(user.getEmail())) {
			result.put(false, "Podaj poprawny adres e-mail.");
			return result;
		}

		if (StringUtils.isBlank(user.getUserDetails().getImie())) {
			result.put(false, "Imie nie moze byc puste.");
			return result;
		}

		if (StringUtils.isBlank(user.getUserDetails().getNazwisko())) {
			result.put(false, "Nazwisko nie moze byc puste.");
			return result;
		}

		if (String.valueOf(user.getUserDetails().getPESEL()).equals("")
				|| String.valueOf(user.getUserDetails().getPESEL()).length() != 11) {
			result.put(false, "Podaj poprawny numer PESEL.");
			return result;
		}

		if (String.valueOf(user.getUserDetails().getNrTelefonuPrywatny()).equals("")
				|| String.valueOf(user.getUserDetails().getNrTelefonuPrywatny()).length() != 9) {
			result.put(false, "Podaj poprawny numer telefonu(prywatny).");
			return result;
		}

		if (StringUtils.isBlank(user.getAddress().getKraj())) {
			result.put(false, "Kraj nie moze byc puste.");
			return result;
		}

		if (StringUtils.isBlank(user.getAddress().getKodPocztowy())) {
			result.put(false, "Kod pocztowy nie moze byc pusty.");
			return result;
		}

		if (StringUtils.isBlank(user.getAddress().getMiasto())) {
			result.put(false, "Miasto nie moze byc puste.");
			return result;
		}

		if (StringUtils.isBlank(user.getAddress().getUlica())) {
			result.put(false, "Ulica nie moze byc pusta.");
			return result;
		}

		if (StringUtils.isBlank(user.getAddress().getNrUlicy())) {
			result.put(false, "Numer ulicy nie moze byc puste.");
			return result;
		}

		return result;
	}

}
