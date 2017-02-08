package com.quanlinhatro

class RegionController extends BaseController {

    def index() { }

    def create(){
        render(template: 'edit', model: [region: new Region(user: user)])
    }

    def setCurrentRegion(long id) {
        def instance = Region.get(id)
        if(instance) {
            region = instance
        }
    }

    def save(long id) {
        render "complete-acction"
    }

    def regionList() {
        def regions = Region.findAllByUser(user)
        render(template: 'listRegion', model: [regions: regions])
    }
}
