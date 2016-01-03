package org.poomda.activity

import org.poomda.file.CommonFile
import org.springframework.security.access.annotation.Secured

@Secured(['permitAll'])
class HistoryController {
	static scaffold = true
	
	def registHistory(){
		def activity = Activity.get(params.activityId)
		
		def history = new History(activity:activity,content:params.content, user:activity.user)
		if(!history.save(flush:true)) println history.getErrors()
		else{
			def tempPath = "/upload/activity/history/"
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
			if(imgFile) history.addToAttchImg(imgFile).save(flush:true)
		}
		
		redirect controller:'service',action:'outreach2',params:[id:activity.id] 
	}
}
