package org.poomda.locale

import grails.converters.JSON

import org.springframework.security.access.annotation.Secured

@Secured(['permitAll'])
class AddressController {

    def index() { }
	
	def getCityListByState(){render Address.findAllByState(params.state).city as JSON}
}
