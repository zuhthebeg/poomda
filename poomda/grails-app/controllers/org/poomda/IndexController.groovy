package org.poomda

import org.springframework.security.access.annotation.Secured;

@Secured(['permitAll'])
class IndexController {

	def index(){
		//redirect(action: "main")
		render view : 'main'
	}
    def main() { 	}
}
