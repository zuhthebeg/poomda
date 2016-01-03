package org.poomda.activity

import grails.plugin.springsecurity.annotation.Secured

import org.poomda.animal.Animal
import org.poomda.file.ImgActivity
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
		
		render view:'sponsor2', model:[typeList:typeList, target:params.target, sponsorTarget:sponsorTarget, activityType:params.activityType, prevUrl:"/${params.controller}/${params.action}?${request.queryString}"]
	}
	def sponsor3(){
		
		if(params.target == 'Shelter')	params.shelter = Shelter.get(params.sponsorTarget)
		else if(params.target == 'Animal') params.animal = Animal.get(params.sponsorTarget)
		
		def user = User.get(springSecurityService.principal.id)
		params.user = user
		params.period = new Date().parse("yyyy-MM-dd", params.period)
		params.address = params.state + ' ' + params.city
		params.area = params.areaDetails
		//params.activityType = null//ActivityType.findByType(params.activityType).id
		def activity = new Activity(params)

		if(!activity.save(true)){
			println activity.getErrors()
			redirect url:params.prevUrl, params:request.params
		}else{
			def ap = new ActivityParticipants(activity:activity, user:user,status:'APPROVAL',application:'관리자')
			if(!ap.save(true))println ap.getErrors()
		
			def tempPath = "/upload/activity/"
			def storagePath = servletContext.getRealPath("/") +tempPath;
			
			def files = []
			files << params.imgActivity1
			
			files.each{
				if(!it.empty){
					def fileItem = it.getFileItem()
					it.transferTo(new File(storagePath+"/"+fileItem.name))
					def imgFile = new ImgActivity(  activity:activity, user : user, filename:fileItem.name,filepath:request.getContextPath()+tempPath, extention : fileItem.name.split('\\.')[1], status : 'INITIALIZE' )
					if(!imgFile.save(true)){
						println imgFile.getErrors()
					}
				}
			}
		}
		render view:'sponsor3', model : [activity : activity]
	}
	def activityLikeUser(){
		def activity = Activity.get(params.activityId)
		render activity.activityLikeUser(User.get(params.userId)).save(true)
	}
}
