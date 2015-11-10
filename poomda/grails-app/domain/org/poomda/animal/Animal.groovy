package org.poomda.animal

import grails.transaction.Transactional

import org.poomda.member.User
import org.poomda.member.UserLikeAnimal
import org.poomda.shelter.Shelter

class Animal {
	User user
	AnimalBreed breed
	
	String name
	
	String gender
	
	String age
	
	String weight
	
	String furColor
	String feature
	
	String introduction
	String adoptionInquiry
	String status
	
	Shelter shelter
	String tempShelter
	
	Integer viewCount = 0
	
	Date dateCreated
	Date lastUpdated
	
    static constraints = {
		name nullable:true, maxSize:20
		gender inList:['수컷','암컷','중성화']
		age maxSize:10
		//breed inList:['protected','complete']
		introduction nullable : true, maxsize:2000
		adoptionInquiry nullable : true, maxsize:2000
		feature nullable : true
		shelter nullable : true
		tempShelter nullable : true
		status inList:['개인보호중','센터보호중','입양완료','반환','자연사','안락사']
    }
	static mapping ={
		introduction type: 'text'
		adoptionInquiry type: 'text'
		viewCount defaultValue: "0"
		shelter index:'shelter'
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
