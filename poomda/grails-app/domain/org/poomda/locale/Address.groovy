package org.poomda.locale

class Address {
	
	Country country
	
	String state
	String city
	String details
	
	String postNumber
	
    static constraints = {
		city nullable : true
		details nullable : true
		postNumber nullable : true
    }
	
	String toString(){this.state}
}
 