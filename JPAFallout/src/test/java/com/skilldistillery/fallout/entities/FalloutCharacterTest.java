package com.skilldistillery.fallout.entities;

import static org.junit.jupiter.api.Assertions.*;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class FalloutCharacterTest {
	
	private static EntityManagerFactory emf;
	private EntityManager em;
	private FalloutCharacter character;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("FalloutPU");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		
		em = emf.createEntityManager();
		character = em.find(FalloutCharacter.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		character = null;
	}

	@Test
	void test() {
		assertNotNull(character);
		assertEquals("Bob", character.getName());
	}

}
