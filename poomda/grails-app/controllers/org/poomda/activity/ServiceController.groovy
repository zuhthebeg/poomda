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
	def service(){
		def activityList = Activity.findAll(params){
		}
		def searchCount = Activity.findAll(params){
		}.size()
		render view:'service' , model : [activityList:activityList,searchCount:searchCount]
	}
	def volunteer(){
		def activityList = Activity.findAll(params){
			eq('activityType','Volunteer')
		}
		def searchCount = Activity.findAll(params){
			eq('activityType','Volunteer')
		}.size()
		render view : 'service', model: [activityList:activityList,activityTypeList : ActivityType.findAllByType('Volunteer') ,searchCount:searchCount]
	}
	def sponsored(){
		def activityList = Activity.findAll(params){
			eq('activityType','Sponsored')
		}
		def searchCount = Activity.findAll(params){
			eq('activityType','Sponsored')
		}.size()
		render view : 'service', model: [activityList:activityList,activityTypeList : ActivityType.findAllByType('Sponsored'),searchCount:searchCount]
	}
	
	def service2(){}
	
	def requestJoinActivity(){
		def result = false
		def activity = Activity.get(params.activityId)
		def user = User.findByUsername(params.email)
		
		def ap = ActivityParticipants.findByActivityAndUser(activity, user)
		if(!ap){
			ap = new ActivityParticipants(activity:activity, user:user,status:'REGIST',application:params.application)
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
	def requestChangeStatusByActivity(){
		
		def activity = Activity.get(params.activityId)
		
		def result = activity ? ActivityParticipants.executeUpdate("update ActivityParticipants ap set ap.status = '${params.status}' where ap.activityId = ${activity.id}") : false
		println result 
		
		render result
	}
}
 