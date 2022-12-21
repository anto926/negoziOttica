package it.corso.service;

import javax.servlet.http.HttpSession;

public interface UtenteService {

	boolean verificaLogin(String username, String password, HttpSession session);
}
