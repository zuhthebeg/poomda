package org.poomda.service

import grails.plugin.springsecurity.annotation.Secured

@Secured (['ROLE_USER','permitAll'])
class ServiceController {
	static scaffold = Service
    //def index() { }
	
	def activeMore1_2(){}
	def activeMore2_1(){}
	def activeMore2_2(){}
	def outreach(){}
	def outreach2(){}
	def outreach3(){}
	def outreach4(){}
	def service(){}
	def service2(){}
}
