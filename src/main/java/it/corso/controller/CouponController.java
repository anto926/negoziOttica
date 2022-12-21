package it.corso.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import it.corso.model.Occhiale;
import it.corso.service.OcchialeService;

@Controller
@RequestMapping("/coupon")
public class CouponController {

	@Autowired
	private OcchialeService occhialeService;
	
	public String getPage(Model model, @RequestParam(name = "id", required = true) Integer id) {
		String codice = occhialeService.codiceSconto();
		Occhiale occhiale = occhialeService.getOcchialeById(id);
		double prezzoFinale = occhialeService.applicaSconto(occhiale.getPrezzo());
		model.addAttribute("codice", codice);
		model.addAttribute("marca", occhiale.getMarca());
		model.addAttribute("prezzo", occhiale.getPrezzo());
		model.addAttribute("modello", occhiale.getModello());
		model.addAttribute("tipologia", occhiale.getTipologia());
		model.addAttribute("prezzoFinale", prezzoFinale);
		return "coupon";
	}
}
