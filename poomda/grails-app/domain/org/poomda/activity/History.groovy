package org.poomda.activity

import org.poomda.file.CommonFile
import org.poomda.member.User

class History {

	Activity activity
	User user
	static hasMany = [attchImg:CommonFile]
	
	String content
    static constraints = {
		content nullable : false, maxsize : 3000, minSize:50
    }
}
