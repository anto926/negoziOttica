package it.corso.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import it.corso.model.Occhiale;
import it.corso.service.OcchialeService;

@Controller
@RequestMapping(path = "/reserved")
public class ReservedController {
	@Autowired
	OcchialeService occhialeService;
	
	@GetMapping
	public String getPage(Model model) {
		Occhiale occhiale = new Occhiale();
		model.addAttribute("occhiale", occhiale);
		return "reserved";
	}
	
	@PostMapping
	public String addOcchiale(@Valid @ModelAttribute("occhiale") Occhiale occhiale, BindingResult result) {
		if(result.hasErrors()) {
			return "reserved";
		}else {
			occhialeService.createOcchiale(occhiale);
			return "redirect:/";
		}
		
	}
}
