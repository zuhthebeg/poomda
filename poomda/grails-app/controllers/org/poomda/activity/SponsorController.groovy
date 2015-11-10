package org.poomda.activity

import grails.plugin.springsecurity.annotation.Secured

@Secured (['ROLE_USER', 'permitAll'])
class SponsorController {
	def scaffold = true
}
