package org.poomda.member

class User {

	transient springSecurityService

	String username	//email
	String password
	boolean enabled = true
	boolean accountExpired
	boolean accountLocked
	boolean passwordExpired
	
	String nickname
	String gender
	Date birthday
	Integer age
	String phone
	String introduction
	String activityHistory
	String profile
	String liveTag
	String secessionType
	String secessionReason
	String facebookID
	
	Date dateCreated
	Date lastUpdated
	
	static transients = ['springSecurityService']

	static constraints = {
		username blank: false, unique: true, email : true
		password blank: false
		
		nickname nullable:true, unique:true
		gender nullable:true, inList:['남','여','기타']
		birthday nullable:true
		age nullable:true
		phone nullable:true
		introduction nullable:true, maxSize: 1000
		activityHistory nullable:true
		profile nullable:true
		liveTag nullable:true
		secessionType nullable:true
		secessionReason nullable:true
		facebookID nullable:true
	}

	static mapping = {
		password column: '`password`'
	}

	Set<Role> getAuthorities() {
		UserRole.findAllByUser(this).collect { it.role }
	}

	def beforeInsert() {
		encodePassword()
	}

	def beforeUpdate() {
		if (isDirty('password')) {
			encodePassword()
		}
	}

	protected void encodePassword() {
		password = springSecurityService?.passwordEncoder ? springSecurityService.encodePassword(password) : password
	}
	
	String toString(){
		return nickname
	}
	
	String getAgeByBirthday(){
		if(!this.birthday) return null
		this.age = ((new Date(new Date().time - (this.birthday).time ).time) / 1000 / 60 / 60/ 24 / 365).toInteger()
	}
}
