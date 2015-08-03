package org.poomda.animal

import grails.transaction.Transactional

import org.poomda.member.User
import org.poomda.member.UserLikeAnimal
import org.poomda.shelter.Shelter

class Animal {
	User user
	AnimalType type
	AnimalStatus status
	AnimalBreed breed
	
	String name
	
	String gender
	
	Integer age
	String ageType
	
	String weight
	
	String furColor
	String feature
	
	String introduction
	String adoptionInquiry
	
	Shelter shelter
	
	Integer viewCount = 0
	
	Date dateCreated
	Date lastUpdated
	
    static constraints = {
		name nullable:false
		gender inList:['Male','Female']
		ageType inList:['Year', 'Month', "Day"]
		//breed inList:['protected','complete']
		introduction nullable : true, maxsize:4000
		adoptionInquiry nullable : true, maxsize:4000
		feature nullable : true
		shelter nullable : true
    }
	static mapping ={
		introduction type: 'text'
		adoptionInquiry type: 'text'
		viewCount defaultValue: "0"
	}
	String toString(){
		return name
	}
	@Transactional
	def updateViewCount(def i) {
		if(id) this.viewCount += i 
	}
	@Transactional
	def updateLikeCount(User user) {
		if(user) UserLikeAnimal.findOrSaveWhere(user:user,animal:this)
	}
	
	Integer getLikeCount() {
		if(user) return UserLikeAnimal.countByAnimal(this)
	}
}
