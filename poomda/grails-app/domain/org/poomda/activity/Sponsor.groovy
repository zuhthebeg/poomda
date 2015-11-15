package org.poomda.activity

import java.util.Date;

import org.poomda.member.User;
import org.poomda.shelter.Shelter;

class Sponsor extends Activity{
	
	static hasMany = [activityType:ActivityType]
	Integer donationAmount
	String sponsoredItem
	
	static constraints = {
		donationAmount range: 1..1000000 
		sponsoredItem nullable : true
	}
	
	static mapping = {
		donationAmount defaultValue : "0"
	}
}
