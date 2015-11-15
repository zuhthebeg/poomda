package org.poomda.activity

class ActivityType {

	String type
	String name
	
    static constraints = {
		name maxSize:20, unique:true, nullable:false
		type inList:["Sponsored", "Volunteer"], nullable:false
    }
	
	String toString(){name}
}
