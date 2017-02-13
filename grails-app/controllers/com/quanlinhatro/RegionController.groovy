package com.quanlinhatro

import grails.converters.JSON

class RegionController extends BaseController {

    def index() { }

    def create(){
        render(template: 'edit', model: [region: new Region()])
    }

    def setCurrentRegion(Region instance) {
        if(instance) {
            def userInstance = User.get(user?.id)
            userInstance.currentRegion = instance
            userInstance.save(flush: true)
        }
    }

    def save(long id) {
        def regionInstance = id ? Region.get(id) : new Region(user: user)
        if(id) {
            params.remove('id')
        }
        regionInstance.name = (params.name as String).trim()
        regionInstance.address = (params.address as String).trim()
        if(regionInstance.hasErrors() || !regionInstance.save(flush: true)){
            println("err - " + regionInstance.errors)
            render ([error: true, message: [type: 'error', content: g.renderErrors(bean: regionInstance, as: 'list')]] as JSON)
        } else{
            if(!user.currentRegion){
                def userInstance = User.get(user?.id)
                userInstance.currentRegion = regionInstance
                if(userInstance.save(flush: true)){
                }
            }
            render ([close: 'this', code: 'update_region',  message: [type: 'success', content: regionInstance.name + " đã đuợc tạo!"]] as JSON)
        }
    }
}
