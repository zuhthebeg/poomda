package org.poomda.file

import org.poomda.member.User;

class CommonFile {
	User user
	
	String filename
	String filepath
	//Integer filesize //bytes
	String extention
	
	String status
	
	Date dateCreated
	Date lastUpdated

	static constraints = {
		extention maxSize :5
		//filesize max : 1024*10
		status inList:['INITIALIZE', 'COMPLETE']
	}
	String toString(){return filename}
}
