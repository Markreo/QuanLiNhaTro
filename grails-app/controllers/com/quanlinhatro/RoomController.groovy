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

    def forRent(long id){ //id: identification of room
        def room = Room.get(id)
        if(room) {
            render(template: 'forRent', model: [room: room])
        }

    }

    def saveRent(long id) {
        def room = Room.get(id)
        if(room) {
            //render(template: 'forRent', model: [room: room])
        }
    }

    def saveRenter() {
        def roomInstance = Room.get(params.room as long)
        if(roomInstance) {
            println("save for rent")
            def lastname = params.getList('lastname')
            def firstname = params.getList('firstname')
            def birthPlace = params.getList('birthPlace')
            def birthYear = params.getList('birthYear')
            def userID = params.getList('userID')
            def phone = params.getList('phone')
            lastname.eachWithIndex {val,index ->
                roomInstance.addToRenters(new Renter(room: roomInstance,
                        lastName: val,
                        firstName: firstname[index],
                        birthPlace: birthPlace[index],
                        birthYear: birthYear[index],
                        userID: userID[index],
                        phone: phone[index])).save(flush: true)
            }
            render ([response: 'OK', message: [type: 'success', content: 'Save!']] as JSON)
        }

    }

    def saveRoomUsesService() {
        def roomInstance = Room.get(params.room as long)
        if(roomInstance) {
            ArrayList<Service> listServices = []
            def servicesIds = params.getList('serviceId')
            servicesIds.each {
                listServices << Service.get(it as Long)
            }
            def listPrice = params.getList('currentPrice')
            //clone
            int i = 0
            listServices.each { s ->
                def serviceTemp

                serviceTemp = roomInstance.uses.find{it.parent.id == s.id}
                if(serviceTemp){
                    serviceTemp.currentPrice = listPrice[i++] as double
                    serviceTemp.save(flush: true)
                } else {
                    roomInstance.addToUses(new Service(unit: s.unit, name: s.name, currentPrice: listPrice[i++], parent: s))
                }
            }
            roomInstance.save(flush: true)
            render ([response: 'OK',
                     message: [type: 'success', content: 'Save!'],
                     update: [content: g.render(template: '/service/serviceGetValueByType', model: [services: roomInstance.uses]), position: 'getvalueService']] as JSON)
        }
    }


    def saveDueDate() {
        def roomInstance = Room.get(params.room as long)
        if(roomInstance) {
            //save value service
            ArrayList<Service> services = []
            def serviceIds = params.getList('serviceId')
            serviceIds.each {
                services << Service.get(it as long)
            }
            def values = params.getList('value')
            services.eachWithIndex {service, index ->
                service.currentValue = values[index] as int
                service.save(flush: true)
            }
            //save duedate
            roomInstance.dueDate = params.getInt('dueDate')
            roomInstance.save(flush: true)

            //save lease
            //TODO: get value fromdate in UI (input)
            //TODO: toDate if 'cong don thang sau'
            def lease = new Lease(fromDate: new Date(), toDate: roomInstance.dueDateThisMonth, room: roomInstance)
            //lease detail
            def serviceUses = roomInstance.uses
            serviceUses.each {service->
                def detail = new LeaseDetail(lease: lease, services: service.strJSON, value1: roomInstance.convertValue1(service), value2: roomInstance.convertValue2(service))
                detail.price = Math.abs(detail.value2 - detail.value1)*service.currentPrice
                lease.addToDetails(detail)
            }
            lease.save(flush: true)

            //save
            roomInstance.addToLeases(lease)
            roomInstance.status = Room.Status.ARERENTING
            roomInstance.save(flush: true)

            render ([response: 'OK',close: 'this', message: [type: 'success', content: 'Save!']] as JSON)
        }

    }
}
