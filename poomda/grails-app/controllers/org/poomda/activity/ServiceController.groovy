package org.poomda.activity

import grails.plugin.springsecurity.annotation.Secured

import org.poomda.member.User

@Secured (['ROLE_USER', 'permitAll'])
class ServiceController {
	def scaffold = true
	
	def activityRequestors(){
		render view:'activityRequestors' , model : [id:params.id]
	}
	def activityEntry(){
		
	}
	def outreach(){
		println params.id
		def activity = Activity.get(params.id)
		activity.viewCount++
		activity.save(true)
		println activity.viewCount
		render view:'outreach' , model : [activity:activity, id:params.id]
	}
	def outreach2(){println params 
		render view:'outreach2' , model : [activity:Activity.get(params.id)]}
	def outreach3(){render view:'outreach3' , model : [activity:Activity.get(params.id)]}
	def outreach4(){render view:'outreach4' , model : [activity:Activity.get(params.id)]}
	def service(){}
	def volunteer(){
		render view : 'service', model: [activityTypeList : ActivityType.findAllByType('Volunteer') ]
	}
	def sponsored(){
		render view : 'service', model: [activityTypeList : ActivityType.findAllByType('Sponsored') ]
	}
	
	def service2(){}
	
	def requestJoinActivity(){
		def result = false
		
		def activity = Activity.get(params.activityId)
		def user = User.findByUsername(params.email)
		
		def ap = ActivityParticipants.findByActivityAndUser(activity, user)
		if(!ap){
			ap = new ActivityParticipants(activity:activity, user:user,status:'REGIST')
			if(!ap.save(true))println ap.getErrors()
			else result = true
		}
		render result
	}
	
	def requestChangeStatus(){
		def result = false
		
		def activity = Activity.get(params.activityId)
		def user = User.findByUsername(params.email)
		
		def ap = ActivityParticipants.findByActivityAndUser(activity, user)
		if(ap){
			ap.status = params.status
			ap.save(true)
			result = true
		}
		render result
	}
}
 