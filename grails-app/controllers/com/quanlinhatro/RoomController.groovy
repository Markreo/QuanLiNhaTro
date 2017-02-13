package com.quanlinhatro

import grails.converters.JSON

class RoomController extends BaseController{

    def index() {
        redirect( action: 'list')
    }

    def list() {
        if(!region){
            render(template: '/region/edit', model: [region: new Region()])
        } else{
            if(params.layout == 'details'){

            } else{ //tiles
                render(template: 'tiles', model:[rooms: Room.findAllByRegion(region)])
            }
        }
    }

    def create() {
        render(template: 'edit')
    }

    def save(long id) {

        if(params.quantity == '') { //thêm 1 phòng
            //TODO: fix room name before save
            if(params.name) {
                params.name = (params.name as String).trim()
                if((params.name as String).startsWith('Phòng') || (params.name as String).startsWith('phòng')){
                    //params.name = (params.name as String).re
                }
            }

            def roomInstance = id ? Room.get(id) : new Room(region: region)
            if (id) {
                params.remove('id')
            }

            roomInstance.properties = params
            if (roomInstance.hasErrors() || !roomInstance.save(flush: true)) {
                println("err - " + roomInstance.errors)
                render ([error: true, message: [type: 'error', content: g.renderErrors(bean: roomInstance, as: 'list')]] as JSON)
            } else{
                render ([close: 'this', code: 'update_room',  message: [type: 'success', content: "Phòng " + roomInstance.name + " đã đuợc tạo!"]] as JSON)
            }
        } else{ //nhiều phòng

        }

    }
}
