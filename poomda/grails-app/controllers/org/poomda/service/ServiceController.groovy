package org.poomda.service

import org.poomda.activity.Service;

import grails.plugin.springsecurity.annotation.Secured

@Secured (['ROLE_USER','permitAll'])
class ServiceController {
	static scaffold = Service
    //def index() { }
	

}
