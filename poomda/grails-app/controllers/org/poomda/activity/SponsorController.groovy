package org.poomda.activity

import grails.plugin.springsecurity.annotation.Secured
import org.poomda.animal.Animal
import org.poomda.member.User
import org.poomda.shelter.Shelter


@Secured (['ROLE_USER'])
class SponsorController {
	def springSecurityService
    //def index() { }
	def sponsor(){}
	def sponsor2(){
		def typeList = ActivityType.findAllByType(params.activityType)
		
		def sponsorTarget
		if(params.target == 'Shelter') sponsorTarget = Shelter.get(params.targetValue)
		else if (params.target == 'Animal') sponsorTarget = Animal.get(params.targetValue)
		
		render view:'sponsor2', model:[typeList:typeList, target:params.target, sponsorTarget:sponsorTarget, activityType:params.activityType]
	}
	def sponsor3(){
		
		if(params.target == 'Shelter')	params.shelter = Shelter.get(params.sponsorTarget)
		else if(params.target == 'Animal') params.animal = Animal.get(params.sponsorTarget)
		
		println params.target
		
		def user = User.get(springSecurityService.principal.id)
		params.user = user
		params.period = new Date()
		
		//params.activityType = null//ActivityType.findByType(params.activityType).id
		def activity = new Activity(params).save(failOnError:true)
		activity.addToActivityUser(user).save(true)
		//if(params.activityType == 'Volunteer') new Volunteer(params).save(failOnError:true)
		//else if (params.target == 'Sponsor') new Sponsor(params).save(failOnError:true)
		
		render view:'sponsor3', model : [activity : activity]
	}
}
