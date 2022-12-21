package it.corso.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import it.corso.model.Occhiale;
import it.corso.service.OcchialeService;

@Controller
@RequestMapping(path = "/reserved")
public class ReservedController {
	
	@Autowired
	private OcchialeService occhialeService;
	
	
	@GetMapping
	public String getPage(Model model, @RequestParam(name = "id", required = false) Integer id, HttpSession session) {
		if(session.getAttribute("log") == null) {
			return "redirect:/login";
		}
		Occhiale occhiale = id == null ? new Occhiale() : occhialeService.getOcchialeById(id);
		model.addAttribute("occhiale", occhiale);
		model.addAttribute("occhiali", occhialeService.getOcchiali());
		/*String rootDir = session.getServletContext().getRealPath("/");
		String filePath = rootDir + "static\\articles\\" + id + ".png";
		File file = new File(filePath);
		occhiale.setImage(file.exists());*/
		return "reserved";
	}
	
	@PostMapping
	public String addOcchiale(@Valid @ModelAttribute("occhiale") Occhiale occhiale, BindingResult result, @RequestParam(name = "image", required = false) MultipartFile image, HttpSession session) {
		if(result.hasErrors()) {
			return "reserved";
		}else {
			occhialeService.createOcchiale(occhiale);
		}
		/*if(image != null && !image.isEmpty()) {
			saveImage(occhiale.getId(), image, session);
		}*/
		return "redirect:/reserved";
	}
	
	@GetMapping("/delete")
	public String deleteOcchiale(@RequestParam("id") int id) {
		Occhiale occhiale = occhialeService.getOcchialeById(id);
		occhialeService.deleteOcchiale(occhiale);
		return "redirect:/reserved";
	}
	
	/*private void saveImage(int id, MultipartFile image, HttpSession session) {
		String rootDir = session.getServletContext().getRealPath("/");	  
		String filePath = rootDir + "static\\images\\" + id + ".png";		
		try {
			image.transferTo(new File(filePath));
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();   username password findBy()
		}
	}*/
}
