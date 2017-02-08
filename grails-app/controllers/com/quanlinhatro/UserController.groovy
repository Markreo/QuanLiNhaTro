package com.quanlinhatro

import org.springframework.security.access.annotation.Secured

class UserController extends BaseController {

    def index() { }

    def getUserName(){
        println(user.name)
        render "${user.name}"
    }


    @Secured('permitAll')
    def quickUser() {
        if(!User.list()) {
            try {
                def adminRole = Role.findOrSaveWhere(authority: 'ROLE_ADMIN', name: 'Admin')
                def admin = User.findOrSaveWhere(name: 'Nguyen Van Giap', phone: '01676112012', username: 'admin', password: '12345')
                def userRole1 = new UserRole(user: admin, role: adminRole)
                userRole1.save(flush: true)
                render "done!"
            } catch (Exception ex) {
                render "fail!"
            }
        }
    }


}
