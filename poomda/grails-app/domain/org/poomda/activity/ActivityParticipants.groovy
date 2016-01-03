package org.poomda.activity

import java.io.Serializable;

import org.poomda.member.User

class ActivityParticipants implements Serializable {
	
	Activity activity
	User user
	
	String status = "REGIST"
	String reason
	String application
	

    static constraints = {
		reason nullable : true
		application nullable : false
		status nullable : false, inList : ['REGIST','APPROVAL', 'REJECT']
    }
	static mapping = {
		id composite: ['activity', 'user']
		status defaultValue : "'REGIST'"
	}
}
