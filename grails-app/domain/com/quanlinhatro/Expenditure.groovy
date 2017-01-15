/**
 * CHI PHÍ
 */
package com.quanlinhatro

class Expenditure {

    ObjectType objectName
    long objectID

    Double quantity
    Service service

    Date dateCreated
    Date lastUpdated

    static transients = ['total']

    static constraints = {
        objectName nullable: false
        objectID nullable: false
        quantity nullable: false
        service nullable: false
        dateCreated()
    }

    Double total() {
        if(service) {
            return quantity * service.unitPrice
        }
        return 0;
    }
}
