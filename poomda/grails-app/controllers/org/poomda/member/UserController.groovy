package org.poomda.member

import org.springframework.security.access.annotation.Secured;

@Secured (['ROLE_USER','permitAll'])
class UserController {

	static scaffold = User
    //def index() { }
}
