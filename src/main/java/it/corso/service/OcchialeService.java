package it.corso.service;

import java.util.List;

import it.corso.model.Occhiale;

public interface OcchialeService {

	String codiceSconto();
	Occhiale getOcchialeById(int id);
	List<Occhiale> getOcchiali();
	void deleteOcchiale(Occhiale occhiale);
	void createOcchiale(Occhiale occhiale);
	double applicaSconto(double prezzo);
}
