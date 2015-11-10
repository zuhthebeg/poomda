package org.poomda.member

import grails.converters.JSON

import org.springframework.security.access.annotation.Secured

@Secured (['ROLE_USER','permitAll'])
class UserController {

	static scaffold = User
    //def index() { }
	
	def regist(){}
	
	def dupNick(){
		render text : [result: (User.findByNickname(params.nick) == null)] as JSON, contentType: 'application/json', encoding: 'UTF-8'
	}
}
