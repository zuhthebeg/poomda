package org.poomda.shelter

import grails.converters.JSON
import grails.plugin.springsecurity.annotation.Secured

import org.poomda.file.ImgShelter
import org.poomda.member.User

@Secured(['ROLE_USER', 'ROLE_ADMIN'])
class ShelterController {
	def springSecurityService
	static scaffold = Shelter
	//def index() { }
	
	def regCenter(){ 
		
	}
	def regCenterOk(){
		def user = User.get(springSecurityService.principal.id)
		
		def tempPath = "/upload/shelter/"
		def storagePath = servletContext.getRealPath("/") +tempPath; 
		
		params.user = user ?:null
		def shelter = new Shelter(params)
		if(!shelter.save(true)){
			println shelter.getErrors()
		}else{
			def files = []
			files << params.imgCenter1
			files << params.imgCenter2
			files << params.imgCenter3
			
			//FileUploader.shelterImageUpload(files, shelter, user)
			files.each{
				println it.getFileItem()
				if(!it.empty){
					def fileItem = it.getFileItem()
					it.transferTo(new File(storagePath+"/"+fileItem.name))
					def imgShelter = new ImgShelter(  shelter:shelter, user : user, filename:fileItem.name,filepath:request.getContextPath()+tempPath, extention : fileItem.name.split('\\.')[1], status : 'INITIALIZE' )
					if(!imgShelter.save(true)){
						println imgShelter.getErrors()
					}
				}
			}
		}
		render view : 'regCenterOk' , model : [shelter : shelter]
	}
	
	def regCenterModify(){}
	
	def searchShelter(){
		println params
		def max = params.max ?:8
		def shelterList = Shelter.findAll(params){
			if(params.address)like('address',"%${params.address}%")
			if(params.addressDetails)like('addressDetails',"%${params.addressDetail}%")
			if(params.name)like('name',"%${params.name}%")
		}
		println shelterList.size()
		if(!shelterList)shelterList = Shelter.list([max:8])
		render template : 'centerList', model : [shelterList:shelterList]
	}

	@Secured(['permitAll'])
	def centerInfo(){
		
		render view:'centerInfo', model : [shelter:Shelter.get(params.shelterId)]
	}
	
	
	def duplicateCheck(){
		def shelter = Shelter.findByName(params.name)
		render shelter == null
	}
	
}
