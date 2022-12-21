package it.corso.dao;

import org.springframework.data.repository.CrudRepository;

import com.google.common.base.Optional;

import it.corso.model.Utente;

public interface UtenteDao extends CrudRepository<Utente, Integer>{

	Utente findByUsernameAndPassword(String username, String password);
}
