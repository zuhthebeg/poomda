package org.poomda

import grails.plugin.springsecurity.annotation.Secured

@Secured(['permitAll'])
class SearchController {

    def search() { }
	def centerInfo(){}
	def searchAnimal(){}
	def searchCenter(){}
}
