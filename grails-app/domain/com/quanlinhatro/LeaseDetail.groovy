package com.quanlinhatro

import groovy.json.JsonSlurper
import groovy.transform.ToString

@ToString
class LeaseDetail {

    static belongsTo = [lease: Lease]
    String services
    long value1
    long value2
    long total

    Date dateCreated
    Date lastUpdated

    static constraints = {
        services nullable: false
        lease nullable: false
        value1 nullable: true
        value2 nullable: true
        total nullable: true
        dateCreated()
    }

    static mapping = {
        version(false)
        table("lease_detail")
    }

    static transients = ['parseService', 'parseInstance', 'updateValue']

    def parseService() {
        def serviceInstance = new JsonSlurper().parseText(this.services)
        return Service.get(serviceInstance?.id)
    }

    Service parseInstance() {
        def serviceInstance = new JsonSlurper().parseText(this.services)
        return new Service(name: serviceInstance.name, unit: Service.Unit.get(serviceInstance.unit), currentPrice: serviceInstance.currentPrice,currentValue: Math.abs(this.value2 - this.value1))
    }

    boolean updateValue(long value){
        def unit = this.parseInstance().unit
        def update = false
        if(unit == Service.Unit.KGW || unit == Service.Unit.M3_2) {
            if(this.value2 != value) {
                this.value2 = value
                update = true
            }
        } else {
            if(this.value1 != value) {
                this.value1 = value
                update= true
            }
        }

        if(update) {
            this.total = this.parseInstance().currentPrice * Math.abs(value2 - value1)
        }

        return update
    }
}
