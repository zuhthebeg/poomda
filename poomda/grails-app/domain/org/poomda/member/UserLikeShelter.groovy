package org.poomda.member

import java.io.Serializable;

import org.poomda.shelter.Shelter;

class UserLikeShelter implements Serializable {
	User user
	Shelter shelter
	
	static boolean exists(long userId, long shelterId) {
		UserLikeShelter.where {
			user == User.load(userId) &&
			shelter == Shelter.load(shelterId)
		}.count() > 0
	}
	
	static mapping = {
		id composite: ['shelter', 'user']
		version false
	}
    static constraints = {
    }
}
