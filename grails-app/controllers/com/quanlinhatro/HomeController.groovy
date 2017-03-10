package com.quanlinhatro


import grails.converters.JSON
import static java.util.Calendar.*
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

    def countDate(int id){
        def d = id
        def z = 0
        if(d) {
            def days = Calendar.instance.getActualMaximum(Calendar.DAY_OF_MONTH)
            def today = Calendar.instance
            if(d < today[DATE]) {
                z = days - today[DATE] + d;
            } else{ // d > today.date
                d = d < days ? d : days
                z = d - today[DATE]
            }
        }
        render(z)
    }
}
