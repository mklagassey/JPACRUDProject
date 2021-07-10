package com.skilldistillery.fallout.data;

import org.springframework.stereotype.Component;

import com.skilldistillery.fallout.entities.FalloutCharacter;

@Component
public interface FOCharacterDAO {
	FalloutCharacter findById(int id);

}
