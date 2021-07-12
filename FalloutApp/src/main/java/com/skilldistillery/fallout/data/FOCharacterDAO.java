package com.skilldistillery.fallout.data;

import java.util.List;

import org.springframework.stereotype.Component;

import com.skilldistillery.fallout.entities.FalloutCharacter;

@Component
public interface FOCharacterDAO {
	FalloutCharacter findById(int id);
	FalloutCharacter createCharacter(FalloutCharacter foCharacter);
	FalloutCharacter updateCharacter(FalloutCharacter foCharacter);
	boolean deleteCharacter(FalloutCharacter foCharacter);

	List<FalloutCharacter> findCharBySearchString(String keyword);
	
	

}
