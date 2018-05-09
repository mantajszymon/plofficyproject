package pl.office.services;

import java.util.LinkedList;
import java.util.List;
import java.util.stream.Collectors;

import com.mysql.jdbc.StringUtils;

import pl.office.model.User;
import pl.office.repository.UserRepository;

public class SearchResults {

	public List<User> searchStudents(Filtr filtr, UserRepository userRepo) {

		List<User> listaWszystkichUzytkownikow = userRepo.findAll();
		List<User> listaWszystkichStudentow = listaWszystkichUzytkownikow.stream()
				.filter(u -> u.getUserDetails().getTyp().equals("student")).collect(Collectors.toList());

		if (!StringUtils.isNullOrEmpty(filtr.getImie())) {
			listaWszystkichStudentow = listaWszystkichStudentow.stream()
					.filter(s -> s.getUserDetails().getImie().equals(filtr.getImie())).collect(Collectors.toList());
		}

		if (!StringUtils.isNullOrEmpty(filtr.getNazwisko())) {
			listaWszystkichStudentow = listaWszystkichStudentow.stream()
					.filter(s -> s.getUserDetails().getNazwisko().equals(filtr.getNazwisko()))
					.collect(Collectors.toList());
		}

		if (!StringUtils.isNullOrEmpty(filtr.getNrIndeksu())) {
			listaWszystkichStudentow = listaWszystkichStudentow.stream()
					.filter(s -> s.getUserTypeDetails().getNrIndeksu().equals(filtr.getNrIndeksu()))
					.collect(Collectors.toList());
		}
		if (!StringUtils.isNullOrEmpty(filtr.getIdentyfikator())) {
			listaWszystkichStudentow = listaWszystkichStudentow.stream()
					.filter(s -> s.getUserTypeDetails().getIdentyfikator().equals(filtr.getIdentyfikator()))
					.collect(Collectors.toList());
		}
		if (!StringUtils.isNullOrEmpty(filtr.getWydzial())) {
			listaWszystkichStudentow = listaWszystkichStudentow.stream()
					.filter(s -> s.getUserTypeDetails().getWydzial().equals(filtr.getWydzial()))
					.collect(Collectors.toList());
		}
		if (!StringUtils.isNullOrEmpty(filtr.getKierunek())) {
			listaWszystkichStudentow = listaWszystkichStudentow.stream()
					.filter(s -> s.getUserTypeDetails().getKierunek().equals(filtr.getKierunek()))
					.collect(Collectors.toList());
		}
		if (!StringUtils.isNullOrEmpty(filtr.getPESEL())) {
			listaWszystkichStudentow = listaWszystkichStudentow.stream()
					.filter(s -> s.getUserDetails().getPESEL().equals(filtr.getPESEL())).collect(Collectors.toList());
		}

		if (StringUtils.isNullOrEmpty(filtr.getIdentyfikator()) && StringUtils.isNullOrEmpty(filtr.getImie())
				&& StringUtils.isNullOrEmpty(filtr.getKierunek()) && StringUtils.isNullOrEmpty(filtr.getNazwisko())
				&& StringUtils.isNullOrEmpty(filtr.getNrIndeksu()) && StringUtils.isNullOrEmpty(filtr.getPESEL())
				&& StringUtils.isNullOrEmpty(filtr.getWydzial())) {
			listaWszystkichStudentow = new LinkedList<User>();
		}

		return listaWszystkichStudentow;

	}

	public List<User> searchWorkers(Filtr filtr, UserRepository userRepo) {
		List<User> listaWszystkichUzytkownikow = userRepo.findAll();
		List<User> listaWszystkichPracownikow = listaWszystkichUzytkownikow.stream()
				.filter(u -> u.getUserDetails().getTyp().equals("nauczyciel")
						|| u.getUserDetails().getTyp().equals("sekretariat"))
				.collect(Collectors.toList());

		if (!StringUtils.isNullOrEmpty(filtr.getImie())) {
			listaWszystkichPracownikow.stream().filter(s -> s.getUserDetails().getImie().equals(filtr.getImie()));
		}

		if (!StringUtils.isNullOrEmpty(filtr.getNazwisko())) {
			listaWszystkichPracownikow.stream()
					.filter(s -> s.getUserDetails().getNazwisko().equals(filtr.getNazwisko()));
		}

		if (!StringUtils.isNullOrEmpty(filtr.getNrIndeksu())) {
			listaWszystkichPracownikow.stream()
					.filter(s -> s.getUserTypeDetails().getNrIndeksu().equals(filtr.getNrIndeksu()));
		}
		if (!StringUtils.isNullOrEmpty(filtr.getIdentyfikator())) {
			listaWszystkichPracownikow.stream()
					.filter(s -> s.getUserTypeDetails().getIdentyfikator().equals(filtr.getIdentyfikator()));
		}
		if (!StringUtils.isNullOrEmpty(filtr.getWydzial())) {
			listaWszystkichPracownikow.stream()
					.filter(s -> s.getUserTypeDetails().getWydzial().equals(filtr.getWydzial()));
		}
		if (!StringUtils.isNullOrEmpty(filtr.getKierunek())) {
			listaWszystkichPracownikow.stream()
					.filter(s -> s.getUserTypeDetails().getKierunek().equals(filtr.getKierunek()));
		}
		if (!StringUtils.isNullOrEmpty(filtr.getPESEL())) {
			listaWszystkichPracownikow.stream().filter(s -> s.getUserDetails().getPESEL().equals(filtr.getPESEL()));
		}

		return listaWszystkichPracownikow;

	}

}
