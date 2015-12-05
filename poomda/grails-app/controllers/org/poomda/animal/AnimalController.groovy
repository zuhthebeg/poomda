package org.poomda.animal

import grails.converters.JSON

import org.poomda.file.ImgAnimal
import org.poomda.locale.Address
import org.poomda.member.User
import org.poomda.shelter.Shelter
import org.springframework.security.access.annotation.Secured

@Secured (['ROLE_USER', 'permitAll'])
class AnimalController {
	def springSecurityService
	def scaffold = Animal
    //def index() { }
	@Secured (['ROLE_USER'])
	def regAnimal(){}
	@Secured (['ROLE_USER'])
	def regAnimal2(){
		//log.info "User agent: " + request.getHeader("User-Agent")
		println request.method
		println params
		def tempShelter
		if(request.method.equals("POST")){
			def address = Address.findByStateLike(params.address)
			tempShelter = address.state
			println address
		}else if(request.method.equals("GET")){
			def shelter = Shelter.get(params.shelterId)
			println shelter
		}
		
		render view:'regAnimal2', model:[tempShelter:tempShelter]
	}
	@Secured (['ROLE_USER'])
	def regAnimalOk(){
		def breed = AnimalBreed.findByNameKor(params.breedName)
		def user = User.get(springSecurityService.principal.id)
		
		params.put("breed", breed)
		params.put("user", user)
		
		def animal = new Animal(params)
		
		def shelter = Shelter.get(params.shelterId)
		if(shelter)animal.shelter = shelter
		
		def tempPath = "/upload/animal/"
		def storagePath = servletContext.getRealPath("/") +tempPath;
		
		if(!animal.save(true)){
			println animal.getErrors()
			redirect url:params.prevUrl, params:params
		}else{
			def files = []
			files << params.imgAnimal1
			files << params.imgAnimal2
			files << params.imgAnimal3
			
			files.each{
				if(!it.empty){
					def fileItem = it.getFileItem()
					it.transferTo(new File(storagePath+"/"+fileItem.name))
					def imgFile = new ImgAnimal(  animal:animal, user : user, filename:fileItem.name,filepath:request.getContextPath()+tempPath, extention : fileItem.name.split('\\.')[1], status : 'INITIALIZE' )
					if(!imgFile.save(true)){
						println imgFile.getErrors()
					}
				}
			}
		}
		render view:'regAnimalOk', model:[animal:animal]
	}
	@Secured (['ROLE_USER'])
	def regAnimalModify(){}
	def addInfo(){}
	def breedlist(){
		render AnimalBreed.findAllByAnimalType(AnimalType.get(params.id)) as JSON
	}
	def animalInfo(){
		render view:'animalInfo', model : [animal:Animal.get(params.animalId)]
	}
}
