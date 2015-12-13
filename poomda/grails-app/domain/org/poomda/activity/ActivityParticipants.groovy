package org.poomda.activity

import java.io.Serializable;

import org.poomda.member.User

class ActivityParticipants implements Serializable {
	
	Activity activity
	User user
	
	String status = "REGIST"
	String reason
	

    static constraints = {
		reason nullable : true
		status nullable : false, inList : ['REGIST','APPROVAL', 'REJECT']
    }
	static mapping = {
		id composite: ['activity', 'user']
		status defaultValue : "'REGIST'"
	}
}
