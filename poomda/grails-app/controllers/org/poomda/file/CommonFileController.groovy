package org.poomda.file

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_USER', 'ROLE_ADMIN'])
class CommonFileController {

    def initUpload() { }
}
