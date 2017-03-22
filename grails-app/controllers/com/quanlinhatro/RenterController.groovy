package com.quanlinhatro

class RenterController extends BaseController{

    def index() {
        render(template: 'index', model: [renters: Renter.findAllByRegion(region), rooms: Room.findAllByRegion(region)])
    }

    def show(long id) {
        def renter = Renter.get(id)
        if(renter) {
            render(template: 'show', model: [renter: renter])
        } else {
            render("Can not find Renter!")
        }
    }

    def new_renter() {
        render template: 'new_renter'
    }

    def addRenter() {
        def room = Room.get(params.room)
        if(room) {
            render(template: 'add_renter', model: [room: room])
        } else {
            render('Can not found room id')
        }

    }

    def saveAddRenter() {
        def room = Room.get(params.room)
        if(room) {
            def renter = new Renter(params)
            println(renter)
            renter.region = Region.get(region.id)
            renter.save(flush: true)
            room.addToRenters(renter).save(flush: true)
            render ("""<script>location.reload();</script>""")
        } else {
            render('Can not found room id')
        }
    }
}
