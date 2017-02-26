/**
 * KHU/DÃY TRỌ
 */
package com.quanlinhatro

class Region extends Base {

    String name
    String address
    static belongsTo = [user: User]
    static hasMany = [rooms: Room, services: Service] //services: Service giá dịch vụ chung trong khu này

    Date dateCreated
    Date lastUpdated

    static constraints = {
        name nullable: false, blank: false, unique: ['user']
        address nullable: true
        user nullable: false
        rooms nullable: true
        dateCreated()
    }

    static mapping = {
        version(false)
        services joinTable: [name: 'region_default', key: 'service_id', column: 'region_id']
    }

    @Override
    ObjectType objectType() {
        return ObjectType.REGION;
    }
}
