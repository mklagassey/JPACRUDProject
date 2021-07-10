package com.skilldistillery.fallout.data;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.fallout.entities.FalloutCharacter;

@Service
@Transactional
public class FOCharacterDAOImpl implements FOCharacterDAO{
	@PersistenceContext
	private EntityManager em;
	
	@Override
	public FalloutCharacter findById(int id) {
		return em.find(FalloutCharacter.class, id);
	}

}
