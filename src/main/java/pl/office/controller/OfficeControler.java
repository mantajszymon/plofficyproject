package pl.office.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class OfficeControler {
	
	@PostMapping
	public String index(Model model)
	{
		return "index";
	}

}
