package com.quanlinhatro

import org.springframework.security.access.annotation.Secured


@Secured('IS_AUTHENTICATED_FULLY')
class BaseController {
    def springSecurityService
    User user
    Region region

    def beforeInterceptor = {
        user = springSecurityService.currentUser as User
        println("${request.xhr ? 'AJAX' : ''} ${request.method} ${controllerName}.${actionName} --- params:${params}")
        if (user) {
            session.user = user
        }
        if(region) {
            session.region = region
        }
    }
}
