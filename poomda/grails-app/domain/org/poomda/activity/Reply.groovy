package org.poomda.activity

import java.util.Date;

import org.poomda.member.User;

class Reply {

	Activity activity
	History history
	Review review
	User user
	
	String content
	Date dateCreated
	Date lastUpdated
    static constraints = {
		activity nullable:false
		history nullable:true
		review nullable:true
		content nullable : false, maxSize : 1000, minSize:5
    }
}
