package com.quanlinhatro

class LeaseDetail {

    static belongsTo = [lease: Lease]
    Service service
    int value1
    int value2
    double price

    static constraints = {
        service nullable: false
        lease nullable: false
        value1 nullable: true
        value2 nullable: true
        price nullable: true
    }

    static mapping = {
        version(false)
        table("lease_detail")
    }
}
