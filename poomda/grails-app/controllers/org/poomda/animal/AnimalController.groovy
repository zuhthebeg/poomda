package org.poomda.animal

import org.springframework.security.access.annotation.Secured;

@Secured (['ROLE_USER', 'permitAll'])
class AnimalController {
	def scaffold = Animal
    //def index() { }
	def regAnimal(){}
	def regAnimal2(){}
	def regAnimalOk(){}
	def regAnimalModify(){}
	def addInfo(){}
}
