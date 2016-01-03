package org.poomda.activity

import org.poomda.member.User
import org.springframework.security.access.annotation.Secured

@Secured(['permitAll'])
class ReplyController {
	def springSecurityService
	static scaffold = true
	
	def registReply(){
		println params
		def activity = Activity.get(params.activityId)
		def user = User.get(springSecurityService.principal.id)
		def reply = new Reply(activity:Activity.get(params.activityId),content:params.content, history:History.get(params.historyId),review:Review.get(params.reviewId),user:user)
		reply.save(failOnError:true)
		redirect controller:'service',action:params.prevAction,params:[id:activity.id] 
	}
}

