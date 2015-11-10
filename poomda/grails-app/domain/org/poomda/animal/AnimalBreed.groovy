package org.poomda.animal

import org.poomda.member.User

class AnimalBreed {

	AnimalType animalType
	
	String name
	String nameKor
	
	User register
	Date dateCreated
	
    static constraints = {
		nameKor nullable : true
    }
	
	String toString(){
		return nameKor
	}
}
