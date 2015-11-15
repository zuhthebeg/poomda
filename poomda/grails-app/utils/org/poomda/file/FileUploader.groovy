package org.poomda.file

import org.poomda.member.User
import org.poomda.shelter.Shelter

class FileUploader {

	def shelterImageUpload(ArrayList<File> files, Shelter shelter, User user){
		files.each{
			println it.getFileItem()
			if(!it.empty){
				def fileItem = it.getFileItem()
				it.transferTo(new File(storagePath+"/"+fileItem.name))
				def imgFile = new ImgShelter(  shelter:shelter, user : user, filename:fileItem.name,filepath:request.getContextPath()+tempPath, extention : fileItem.name.split('\\.')[1], status : 'INITIALIZE' )
				if(!imgFile.save(true)){
					println imgFile.getErrors()
				}
			}
		}
	}
}
