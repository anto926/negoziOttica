package it.corso.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import it.corso.dao.OcchialeDao;
import it.corso.model.Occhiale;

@Service
public class OcchialeServiceImpl implements OcchialeService{
	
	@Autowired
	private OcchialeDao occhialeDao;

	@Override
	public String codiceSconto() {
		char carattere;
		String iD = "";
		for (int i = 0; i < 2; i++){
            carattere = (char)(Math.random()*26 + 65);     //genero primi due caratteri lettere maiuscole da A a Z e i restanti 8 caratteri numeri da 0 a 9
            iD += carattere;
        }
        
        for (int i = 0; i < 4; i++){
            carattere = (char)(Math.random()*10 + 48);
            iD += carattere;
        }
		return iD;
	}

	@Override
	public Occhiale getOcchialeById(int id) {
		return occhialeDao.findById(id).get();
	}

	@Override
	public List<Occhiale> getOcchiali() {
		return (List<Occhiale>) occhialeDao.findAll();
	}

	@Override
	public void deleteOcchiale(Occhiale occhiale) {
		occhialeDao.delete(occhiale);	
	}

	@Override
	public void createOcchiale(Occhiale occhiale) {
		occhialeDao.save(occhiale);
	}

	@Override
	public double applicaSconto(double prezzo) {
		double sconto;
		sconto = prezzo - ((prezzo / 100) * 20);
		return sconto;
	}
	
	
}
