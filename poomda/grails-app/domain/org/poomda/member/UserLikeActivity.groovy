package org.poomda.member

import org.poomda.activity.Activity
import org.poomda.animal.Animal

class UserLikeActivity implements Serializable {
	User user
	Activity activity
    static constraints = {
		
    }
	static boolean exists(long userId, long activityId) {
		UserLikeActivity.where {
			user == User.load(userId) &&
			activity == Activity.load(activityId)
		}.count() > 0
	}
	
	static mapping = {
		id composite: ['activity', 'user']
		version false
	}
}
