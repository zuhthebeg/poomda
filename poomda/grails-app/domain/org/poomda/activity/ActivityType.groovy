package org.poomda.activity

class ActivityType {

	String name
	
    static constraints = {
		name maxSize:20, unique:true, nullable:false
    }
	
	String toString(){name}
}
