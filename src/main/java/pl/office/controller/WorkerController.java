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
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import pl.office.model.PlanZajec;
import pl.office.model.User;
import pl.office.repository.AddressRepository;
import pl.office.repository.UserDetailsRepository;
import pl.office.repository.UserRepository;
import pl.office.services.Filtr;
import pl.office.services.IntegrateWrapperWithPlanZajec;
import pl.office.services.PlanZajecDayIntegrator;
import pl.office.services.PlanZajecForm;
import pl.office.services.PlanZajecWeek;
import pl.office.services.PlanZajecWeekIntegrator;
import pl.office.services.PlanZajecWrapper;
import pl.office.services.ZajeciaGodziny;

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
		Filtr filtr = new Filtr();
		List<User> listaUserow = userRepo.findAll();
		List<User> listaPracownikow = listaUserow.stream().filter(u -> u.getUserDetails().getTyp().equals("nauczyciel")
				|| u.getUserDetails().getTyp().equals("sekretariat")).collect(Collectors.toList());

		model.addAttribute("filtr", filtr);
		model.addAttribute("listaPracownikow", listaPracownikow);
		return "workers/listWorkers";
	}

	@GetMapping("/workers/podgladPracownika/{id}")
	public String podlgadPracownika(Model model, @PathVariable("id") String id) {
		Optional<User> pracownik = userRepo.findById(Long.parseLong(id));
		List<PlanZajec> planZajecPracownika = pracownik.get().getPlanZajec();
		PlanZajecWeek planZajecWeek = new PlanZajecWeekIntegrator().weekIntegrate(planZajecPracownika);
		
		LOGGER.info("planZajecWeek!: " + planZajecWeek.toString());
		
		List<ZajeciaGodziny> poniedzialek = new PlanZajecDayIntegrator().integrateDayHours(planZajecWeek, "poniedzialek");
		List<ZajeciaGodziny> wtorek = new PlanZajecDayIntegrator().integrateDayHours(planZajecWeek, "wtorek");
		List<ZajeciaGodziny> sroda = new PlanZajecDayIntegrator().integrateDayHours(planZajecWeek, "sroda");
		List<ZajeciaGodziny> czwartek = new PlanZajecDayIntegrator().integrateDayHours(planZajecWeek, "czwartek");
		List<ZajeciaGodziny> piatek = new PlanZajecDayIntegrator().integrateDayHours(planZajecWeek, "piatek");
		List<ZajeciaGodziny> sobota = new PlanZajecDayIntegrator().integrateDayHours(planZajecWeek, "sobota");
		List<ZajeciaGodziny> niedziela = new PlanZajecDayIntegrator().integrateDayHours(planZajecWeek, "niedziela");
		
		model.addAttribute("poniedzialek", poniedzialek);
		model.addAttribute("wtorek", wtorek);
		model.addAttribute("sroda", sroda);
		model.addAttribute("czwartek", czwartek);
		model.addAttribute("piatek", piatek);
		model.addAttribute("sobota", sobota);
		model.addAttribute("niedziela", niedziela);
		
		model.addAttribute("workerId", id);
		model.addAttribute("pracownik", pracownik.get());
		model.addAttribute("planZajec", pracownik.get().getPlanZajec());
		return "workers/viewWorker";
	}

	@PostMapping("/workers/dodajZajeciaPrepare")
	public String dodajZajeciaPOST(@RequestParam("workerId") Long id, Model model) {
		PlanZajecWrapper wrapper = new PlanZajecWrapper();
		PlanZajecForm planZajecForm = new PlanZajecForm();
		planZajecForm.setPlanZajecWrapper(wrapper);

		model.addAttribute("workerId", id);
		model.addAttribute("planZajecForm", planZajecForm);
		return "workers/addLesson";
	}

	@PostMapping("/workers/dodajZajecia")
	public String dodajZajeciaGET(@ModelAttribute("planZajecForm") PlanZajecForm zajeciaForm,
			@RequestParam("workerId") Long workerId, Model model) {
		IntegrateWrapperWithPlanZajec integrateTool = new IntegrateWrapperWithPlanZajec();
		Optional<User> userOpt = userRepo.findById(workerId);
		User wykladowca = userOpt.get();
		List<PlanZajec> wszystkieZajeciaWykladowcy = wykladowca.getPlanZajec();

		if (Integer.valueOf(zajeciaForm.getPlanZajecWrapper().getGodzinaRozpoczeciaHour()) > Integer
				.valueOf(zajeciaForm.getPlanZajecWrapper().getGodzinaZakonczeniaHour())) {
			model.addAttribute("message", "Godzina rozpoczecia nie moze byc wczesniej niz godzina zakonczenia.");
			model.addAttribute("workerId", workerId);
			model.addAttribute("planZajecForm", zajeciaForm);
			return "workers/addLesson";
		}

		PlanZajec planZajec = integrateTool.integrateWrapper(zajeciaForm.getPlanZajecWrapper());

		wszystkieZajeciaWykladowcy.add(planZajec);

		wykladowca.setPlanZajec(wszystkieZajeciaWykladowcy);
		userRepo.save(wykladowca);

		return "workers/addLessonSuccess";
	}

}
