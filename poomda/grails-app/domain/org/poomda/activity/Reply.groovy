package org.poomda.activity

import org.poomda.member.User;

class Reply {

	Activity activity
	User user
	
	String content
    static constraints = {
		content nullable : false, maxSize : 500, minSize:10
    }
}
