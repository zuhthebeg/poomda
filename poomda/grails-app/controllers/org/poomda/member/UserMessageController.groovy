package org.poomda.member

import grails.plugin.springsecurity.annotation.Secured

@Secured(['permitAll'])
class UserMessageController {

	static scaffold = UserMessage
    //def index() { }
	
	def sendMessage(){
		println params
		def um = new UserMessage(params)
		println um.save(failOnError:true)
	}
}
