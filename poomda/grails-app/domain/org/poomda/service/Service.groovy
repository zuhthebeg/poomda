package org.poomda.service

import org.poomda.member.User
import org.poomda.shelter.Shelter

class Service {

	User user
	Shelter shelter
	
	String photo
	String title
	Date period
	String area
	String area_detail
	String address
	
	String activityInfo
	String introduction
	
	static hasMany = [serviceUser: User]
	
	Date dateCreated
	Date lastUpdated
    static constraints = {
		activityInfo maxsize : 4000
		introduction maxsize : 1000
    }
}
