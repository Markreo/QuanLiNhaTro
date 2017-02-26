/***
 * CHO THUÊ
 */
package com.quanlinhatro

class Lease {

    int value1
    int value2
    double price

    Date toDate
    Date fromDate

    Date dateCreated
    Date lastUpdated

    static constraints = {
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
