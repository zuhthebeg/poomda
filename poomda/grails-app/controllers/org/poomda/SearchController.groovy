package org.poomda

import grails.plugin.springsecurity.annotation.Secured

import org.poomda.animal.Animal
import org.poomda.animal.AnimalBreed
import org.poomda.animal.AnimalType
import org.poomda.shelter.Shelter

@Secured(['permitAll'])
class SearchController {

    def search() { }
	def centerInfo(){}
	def searchAnimal(){
		println params
		println AnimalType.findByNameKor(params.animalType)
		def max = params.max ?:8
		def animalList = Animal.findAll(params){
			//if(params.address)like('address',"%${params.address}%")
			//if(params.addressDetails)like('addressDetails',"%${params.addressDetail}%")
			if(params.animalType && !params.animalType.equals('동물'))eq('breed',AnimalBreed.findByAnimalType(AnimalType.findByNameKor(params.animalType)))
			if(params.breedName&& !params.breedName.equals('품종'))eq('breed',AnimalBreed.findByName(params.breedName))
			if(params.status&& !params.status.equals('상태'))eq('status',params.status)
		}
		println animalList
		animalList = animalList ?: Animal.findAllByShelterIsNotNull([max:8])
		render view : 'searchAnimal', model : [animalList:animalList]
	}
	def searchCenter(){
		def max = params.max ?:8
		def shelterList = Shelter.findAll(params){
			if(params.address)like('address',"%${params.address}%")
			if(params.addressDetails)like('addressDetails',"%${params.addressDetail}%")
			if(params.name)like('name',"%${params.name}%")
		}
		if(!shelterList)shelterList = Shelter.findAll(params){}
		
		render view : 'searchCenter', model : [shelterList:shelterList]
	}
}
