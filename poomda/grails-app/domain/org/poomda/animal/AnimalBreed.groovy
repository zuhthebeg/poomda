package org.poomda.animal

class AnimalBreed {

	String name
	String nameKor
    static constraints = {
		nameKor nullable : true
    }
	
	String toString(){
		return nameKor
	}
}
