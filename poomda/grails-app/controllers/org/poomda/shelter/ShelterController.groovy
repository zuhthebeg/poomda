package org.poomda.shelter

import grails.plugin.springsecurity.annotation.Secured

@Secured(['permitAll'])
class ShelterController {
	static scaffold = Shelter
	//def index() { }
	
	def regCenter(){}
	def regCenterOk(){}
	def regCenterModify(){}
}
