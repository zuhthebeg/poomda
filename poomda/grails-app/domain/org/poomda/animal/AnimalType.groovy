package org.poomda.animal

class AnimalType {

	String name
	String nameKor
	String description
	
    static constraints = {
		nameKor nullable : true
    }
	String toString(){
		return name
	}
}
