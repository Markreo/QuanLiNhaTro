package com.quanlinhatro

class RenterController extends BaseController{

    def index() {
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
            room.addToRenters(renter).save(flush: true)
            render ("""<script>location.reload();</script>""")
        } else {
            render('Can not found room id')
        }
    }
}
