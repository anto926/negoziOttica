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
		return null;
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
	public void updateOcchiale(Occhiale occhiale, int id) {
		occhialeDao.save(this.getOcchialeById(id));
	}
	
}
