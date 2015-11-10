package org.poomda

import grails.plugin.springsecurity.annotation.Secured

import org.poomda.shelter.Shelter

@Secured(['permitAll'])
class SearchController {

    def search() { }
	def centerInfo(){}
	def searchAnimal(){
		println params
		def max = params.max ?:8
		def shelterList = Shelter.findAll(params){
			if(params.address)like('address',"%${params.address}%")
			if(params.addressDetails)like('addressDetails',"%${params.addressDetail}%")
			if(params.name)like('name',"%${params.name}%")
		}
		println shelterList.size()
		if(!shelterList)shelterList = Shelter.findAll(params){}
		render view : 'searchAnimal', model : [shelterList:shelterList]
	}
	def searchCenter(){}
}
