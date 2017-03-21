package com.quanlinhatro

import grails.converters.JSON

class LeaseDetailController extends BaseController {

    def index() { }

    def saveDetail() {

        def room = Room.get(params.room)
        if(room) {
            if(params.onlyThisMonth) {
                def lease = room.leaseThisMonth
                String str = [name: params.name, currentPrice: params.getLong('total'), unit: Service.Unit.PHONG.id] as JSON
                def detail = new LeaseDetail(lease: lease, value1: 1, total: params.getLong('total'), services: str)
                if(detail.hasErrors() || !detail.save(flush: true)) {
                    println("ERROR save detail: " + detail.errors)
                }
                flash.message = 'Đã thêm 1 khoản cần thanh toán!'
                render ("""<script>location.reload();</script>""")
            } else {

            }
        } else {
            render('Not found room id')
        }
    }
}
