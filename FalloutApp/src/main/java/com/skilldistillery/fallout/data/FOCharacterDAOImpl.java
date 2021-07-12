package com.skilldistillery.fallout.data;

import java.util.List;

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

	@Override
	public List<FalloutCharacter> findCharBySearchString(String keyword) {
		List<FalloutCharacter> characterList = null;
		
		String query = "SELECT foc FROM FalloutCharacter foc WHERE name LIKE :kw";
		
		characterList = em.createQuery(query, FalloutCharacter.class)
				.setParameter("kw", "%" + keyword + "%").getResultList();

		
		return characterList;
	}

	@Override
	public FalloutCharacter createCharacter(FalloutCharacter foCharacter) {

		// INSERT the thing!
		em.persist(foCharacter);


		return foCharacter;
	}

	@Override
	public FalloutCharacter updateCharacter(FalloutCharacter foCharacter) {
		// Get the DB version
		FalloutCharacter dbChar = em.find(FalloutCharacter.class, foCharacter.getId());
		
		dbChar.setName(foCharacter.getName());
		dbChar.setPrimarySkill(foCharacter.getPrimarySkill());
		dbChar.setFaction(foCharacter.getFaction());
		dbChar.setAlive(foCharacter.isAlive());
		dbChar.setCaps(foCharacter.getCaps());
		dbChar.setBorn(foCharacter.getBorn());

		return foCharacter;
	}

	@Override
	public boolean deleteCharacter(FalloutCharacter foCharacter) {
		FalloutCharacter dbChar = em.find(FalloutCharacter.class, foCharacter.getId());
		boolean removed = false;
		em.remove(dbChar);
		removed = !em.contains(dbChar);
		return removed;
	}

}
