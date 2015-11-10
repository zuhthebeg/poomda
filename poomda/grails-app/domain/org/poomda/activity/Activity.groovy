package org.poomda.activity

import org.poomda.file.CommonFile
import org.poomda.member.User
import org.poomda.shelter.Shelter

class Activity {

	User user
	Shelter shelter
	
	String title
	Date period
	String area
	String areaDetails
	String address
	
	String activityInfo
	String introduction
	
	static hasMany = [activityUser: User, attchImg:CommonFile]

	Date dateCreated
	Date lastUpdated
    static constraints = {
		activityInfo maxsize : 4000
		introduction maxsize : 1000
    }
}
