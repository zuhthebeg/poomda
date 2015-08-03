package org.poomda.shelter

import org.poomda.member.User

class Shelter {

	User user
	String name
	String address
	
	String siteName
	String introduction
	
	String serviceInquiry
	String adoptionInquiry
	
	Date dateCreated
	Date lastUpdated
	
    static constraints = {
		address nullable : false
		
		introduction nullable : true, maxsize : 4000
		serviceInquiry nullable:true, maxsize : 1000
		adoptionInquiry nullable:true, maxsize : 1000
		siteName nullable : true, maxsize:100, url:true
    }
}
