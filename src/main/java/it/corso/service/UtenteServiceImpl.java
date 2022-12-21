package it.corso.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import it.corso.dao.UtenteDao;

@Service
public class UtenteServiceImpl implements UtenteService{

	@Autowired
	private UtenteDao utenteDao;

	@Override
	public boolean verificaLogin(String username, String password, HttpSession session) {
		if(utenteDao.findByUsernameAndPassword(username, password) != null) {
			session.setAttribute("log", true);
			return true;
		}
		return false;
	}
	
}
