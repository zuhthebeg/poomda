package org.poomda.activity

import org.poomda.member.User
import org.poomda.shelter.Shelter

class Service extends Activity{

	static hasMany = [activityType:ActivityType]
	
	static constraints = {
	}
}
