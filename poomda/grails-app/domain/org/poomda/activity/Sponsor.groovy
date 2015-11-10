package org.poomda.activity

import java.util.Date;

import org.poomda.member.User;
import org.poomda.shelter.Shelter;

class Sponsor extends Activity{
	
	Integer sponsorAmount
	
	static constraints = {
		sponsorAmount range: 1..1000000 
	}
}
