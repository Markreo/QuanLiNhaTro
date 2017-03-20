/***
 * CHO THUÊ
 */
package com.quanlinhatro

import groovy.transform.ToString

@ToString
class Lease {

    static belongsTo = [room: Room]
    static hasMany = [details: LeaseDetail]


    Date toDate
    Date fromDate



//    String note

    Date dateCreated
    Date lastUpdated

    static constraints = {
        details nullable: false
        dateCreated()
    }

    static mapping = {
        version(false)
        table('lease')
//        note type: 'text'
    }

    static transients = ['getTotal', 'findDetail']

    long getTotal() {
        println("lease: " + this)
        def prices = this.details?.total
        def sum = 0
        prices.each {
            sum += it;
        }
        return sum
    }

    LeaseDetail findDetail(Service service) {
        return this.details.find {it.parseService().id == service.id}
    }
}
