/***
 * CHO THUÊ
 */
package com.quanlinhatro

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
}
