package com.quanlinhatro

import grails.converters.JSON

class HomeController extends BaseController {

    def index() {
    }

    def loadpage() {
        def regions = Region.findAllByUser(user)
        render([username: "${user.name}", regionname: region ? region.name : 'Dashboard', list: g.render(template: '/region/listRegion',model: [regions: regions])] as JSON)
    }

    def dashboard() {
        if(region) {
            render(template: 'dashboard')
        } else {
            render(template: '/region/edit', model: [region: new Region()])
        }
    }
}
