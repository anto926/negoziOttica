package it.corso.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import it.corso.service.UtenteService;

@Controller
@RequestMapping("/login")
public class LoginController {

	@Autowired
	private UtenteService utenteService;
	
	@GetMapping
	public String getPage() {
		return "login";
	}
	
	@PostMapping("/login")
	public String userLogin(@RequestParam(value = "username", required = false) String username, @RequestParam(value = "password", required = false) String password, HttpSession session) {
		
		if(utenteService.verificaLogin(username, password, session) == true || session.getAttribute("log") != null) {
			return "redirect:/reserved";
		}else {
			return "redirect:/login";
		}
	}
}
