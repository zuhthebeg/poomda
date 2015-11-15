package org.poomda.member

import java.util.Date;

class UserMessage {

	User user
	User sendUser
	
	String subject
	String content
	
	Boolean isRead = false
	
	Date dateCreated
	Date lastUpdated
	
    static constraints = {
		sendUser nullable : true
		subject maxSize : 100, nullable : true
		content maxSize : 1000
    }
	static mapping = {
		isRead defaultValue : 'false'
	}
}
