package it.corso.dao;

import org.springframework.data.repository.CrudRepository;

import it.corso.model.Utente;

public interface UtenteDao extends CrudRepository<Utente, Integer>{

}
