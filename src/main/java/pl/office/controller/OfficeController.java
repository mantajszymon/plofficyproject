package pl.office.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class OfficeController {
	
	@GetMapping("/")
	public String test(Model model)
	{
		String msg = "DPA";
		model.addAttribute("message", msg);
		return "test";
	}

}
