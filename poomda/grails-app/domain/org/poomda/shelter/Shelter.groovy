package org.poomda.shelter

import org.poomda.member.User

class Shelter {

	User user
	String name
	String address
	String addressDetails
	
	String siteName
	String introduction
	
	String serviceInquiry
	String adoptionInquiry
	
	Integer viewCount = 0
	Integer shareCount = 0
	
	Date dateCreated
	Date lastUpdated
	
    static constraints = {
		name nullable : false, maxSize : 100
		introduction nullable : true, maxSize : 4000
		siteName nullable : true, maxSize:100, url:true
		address nullable : false
		addressDetails nullable : true
		serviceInquiry nullable:true, maxSize : 1000
		adoptionInquiry nullable:true, maxSize : 1000
		
    }
	static mapping={
		viewCount defaultValue: "0"
		shareCount defaultValue: "0"
	}
	
	String toString(){return name}
}
