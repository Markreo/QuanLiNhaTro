/**
 * KHU/DÃY TRỌ
 */
package com.quanlinhatro

class Region extends Base {

    String name
    String address
    static belongsTo = [user: User]
    static hasMany = [rooms: Room]

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
    }

    @Override
    ObjectType objectType() {
        return ObjectType.REGION;
    }
}
