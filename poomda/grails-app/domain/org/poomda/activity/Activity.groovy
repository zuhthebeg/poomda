package org.poomda.activity

import org.poomda.animal.Animal
import org.poomda.file.CommonFile
import org.poomda.member.User
import org.poomda.shelter.Shelter

class Activity {

	User user
	Shelter shelter
	Animal animal
	
	String title
	Date period
	String area
	String areaDetails
	String address
	
	String activityInfo
	String introduction
	
	String activityType
	String activityStatus = '모집중'
	
	Integer viewCount = 0
	Integer shareCount = 0
	
	static hasMany = [activityUser: User, attchImg:CommonFile]

	Date dateCreated
	Date lastUpdated
    static constraints = {
		shelter nullable : true
		animal nullable : true
		areaDetails nullable : true
		activityInfo maxSize : 4000, nullable : true
		activityType inList : ['Sponsored','Volunteer']
		introduction maxSize : 1000, nullable : true
		activityStatus inList : ['모집중', '진행중', '완료']
    }
	
	static mapping = {
		viewCount defaultValue: "0"
		shareCount defaultValue: "0"
		activityStatus defaultValue : "'모집중'"
	}
}
