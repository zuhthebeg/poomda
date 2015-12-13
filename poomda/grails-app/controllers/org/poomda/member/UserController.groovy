package org.poomda.member

import grails.converters.JSON

import org.poomda.file.ImgMember
import org.springframework.security.access.annotation.Secured

@Secured (['ROLE_USER','permitAll'])
class UserController {

	static scaffold = User
    //def index() { }
	
	def regist(){
		println params
		render view:'regist',model : [params:params]
	}
	def regist2(){
		new User(username:params.email, password:params.pwd, nickname:params.nick, enabled:true).save(failOnError:true)
		println params	
		render view:'regist2', model : [params:params]
	}
	def registOk(){
		println params
		
		def user = User.findByUsername(params.username)
		user.nickname = params.nickname
		user.gender = params.gender
		user.age = params.age.toInteger()
		user.introduction = params.introduction
		user.activityHistory = params.activityHistory
		user.profile = params.profile
		user.phone = params.phone
		user.facebookID = params.facebookID
		
		if(!user.save(true)){
			
		}else{
			Role roleUser = Role.findByAuthority('ROLE_USER')
			UserRole.create user, roleUser, true
			
			def tempPath = "/upload/member/"
			def storagePath = servletContext.getRealPath("/") +tempPath;
			
			def files = []
			files << params.imgMember
			
			files.each{
				if(!it.empty){
					def fileItem = it.getFileItem()
					it.transferTo(new File(storagePath+"/"+fileItem.name))
					def imgFile = new ImgMember(  member:user, user : user, filename:fileItem.name,filepath:request.getContextPath()+tempPath, extention : fileItem.name.split('\\.')[1], status : 'INITIALIZE' )
					if(!imgFile.save(true)){
						println imgFile.getErrors()
					}else{
						user.profile = imgFile.filepath+imgFile.filename
						user.save(true)
					} 
				}
			}
			
		
		}
		
	}
	
	def dupNick(){
		render text : [result: (User.findByNickname(params.nick) == null)] as JSON, contentType: 'application/json', encoding: 'UTF-8'
	}
	def dupEmail(){
		render text : [result: (User.findByUsername(params.email) == null)] as JSON, contentType: 'application/json', encoding: 'UTF-8'
	}
	
	def mypage(){
		render view:'mypage', model: [user: User.get(params.id)]
	}
	def profile(){
		render view:'mypage', model: [user: User.get(params.id)]
	}
}
