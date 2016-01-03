package org.poomda.activity

import org.poomda.file.CommonFile
import org.springframework.security.access.annotation.Secured

@Secured(['permitAll'])
class ReviewController {
	static scaffold = true
	
	def registReview(){
		def activity = Activity.get(params.activityId)
		
		def review = new Review(activity:activity,content:params.content, user:activity.user)
		if(!review.save(flush:true)) println review.getErrors()
		else{
			def tempPath = "/upload/activity/review/"
			def storagePath = servletContext.getRealPath("/") +tempPath;
			def imgFile
			def files = []
			files << params.imgFile1
			files.each{
				if(!it.empty){
					def fileItem = it.getFileItem()
					it.transferTo(new File(storagePath+"/"+fileItem.name))
					imgFile = new CommonFile(user : activity.user, filename:fileItem.name,filepath:request.getContextPath()+tempPath, extention : fileItem.name.split('\\.')[1], status : 'INITIALIZE' )
				}
			}
			if(imgFile) review.addToAttchImg(imgFile).save(flush:true)
		}
		
		redirect controller:'service',action:'outreach4',params:[id:activity.id] 
	}
}

