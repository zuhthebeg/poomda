package org.poomda.activity

import java.util.Date;

import org.poomda.file.CommonFile
import org.poomda.member.User

class Review {

	Activity activity
	User user
	
	static hasMany = [attchImg:CommonFile]
	
	String content
	Date dateCreated
	Date lastUpdated
    static constraints = {
		content nullable : false
    }
	static mapping = {
		content type: 'text'
	}
}
