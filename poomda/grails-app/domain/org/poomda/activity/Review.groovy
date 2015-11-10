package org.poomda.activity

import org.poomda.file.CommonFile
import org.poomda.member.User

class Review {

	Activity activity
	User user
	
	static hasMany = [attchImg:CommonFile]
	
	String content
    static constraints = {
		content nullable : false, maxSize : 3000, minSize:100
    }
}
