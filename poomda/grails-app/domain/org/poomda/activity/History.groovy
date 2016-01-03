package org.poomda.activity

import org.poomda.file.CommonFile
import org.poomda.member.User

class History {

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
