package com.quanlinhatro

import groovy.transform.EqualsAndHashCode
import groovy.transform.ToString

@EqualsAndHashCode(includes='username')
@ToString(includes='username', includeNames=true, includePackage=false)
class User implements Serializable {

	private static final long serialVersionUID = 1

	transient springSecurityService

	String name
	String phone
	String email

	static hasMany = [regions: Region]

	Region currentRegion

	String username
	String password
	boolean enabled = true
	boolean accountExpired
	boolean accountLocked
	boolean passwordExpired

	Date dateCreated
	Date lastUpdated

	User(String username, String password) {
		this()
		this.username = username
		this.password = password
	}

	Set<Role> getAuthorities() {
		UserRole.findAllByUser(this)*.role
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

	static transients = ['springSecurityService']

	static constraints = {
		name nullable: false, blank: false
		phone nullable: false, blank: false, unique: true
		email nullable: true, unique: true
		regions nullable: true
		currentRegion nullable: true
		username blank: false, unique: true
		password blank: false
		dateCreated()
	}

	static mapping = {
		password column: '`password`'
	}
}
