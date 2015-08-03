package org.poomda.member

import java.io.Serializable;

import org.poomda.animal.Animal

class UserLikeAnimal implements Serializable {
	User user
	Animal animal
    static constraints = {
		
    }
	static boolean exists(long userId, long animalId) {
		UserLikeAnimal.where {
			user == User.load(userId) &&
			animal == Role.load(animalId)
		}.count() > 0
	}
	
	static mapping = {
		id composite: ['animal', 'user']
		version false
	}
}
