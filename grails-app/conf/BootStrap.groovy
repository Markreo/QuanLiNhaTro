import com.quanlinhatro.*;
class BootStrap {

    def init = { servletContext ->
//        if(!User.list()) {
//            def adminRole = Role.findOrSaveWhere(authority: 'ROLE_ADMIN', name: 'Admin')
//            def admin = User.findOrSaveWhere(username: 'admin', password: '12345')
//            if (!admin.authorities.contains(adminRole)) {
//                UserRole.create(admin, adminRole, true)
//            }
//
//            def userRole = Role.findOrSaveWhere(authority: 'ROLE_USER', name: 'user')
//            def user = User.findOrSaveWhere(username: 'user', password: '12345')
//            if (!user.authorities.contains(userRole)) {
//                UserRole.create(user, userRole, true)
//            }
//        }
    }
    def destroy = {
    }
}
