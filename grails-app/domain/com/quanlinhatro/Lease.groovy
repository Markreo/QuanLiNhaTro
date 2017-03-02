/***
 * CHO THUÊ
 */
package com.quanlinhatro

class Lease {

    static belongsTo = [room: Room, service: Service]
    int value1
    int value2
    double price

    Date toDate
    Date fromDate

    Date dateCreated
    Date lastUpdated

    static constraints = {
        room nullable: false
        service nullable: false
        value1 nullable: true
        value2 nullable: true
        price nullable: true
        dateCreated()
    }

    static mapping = {
        version(false)
        table('lease')
    }
}
