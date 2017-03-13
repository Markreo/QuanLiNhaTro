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

    Date dateCreated
    Date lastUpdated

    static constraints = {
        details nullable: false
        dateCreated()
    }

    static mapping = {
        version(false)
        table('lease')
    }

    static transients = ['getTotal']

    int getTotal() {
        println("lease: " + this)
        def prices = this.details?.price
        def sum = 0
        prices.each {
            sum += it;
        }
        return sum
    }
}
