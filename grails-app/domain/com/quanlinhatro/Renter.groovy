/**
 * KHÁCH THUÊ TRỌ
 */
package com.quanlinhatro

class Renter extends Base {
    enum Sex{
        MALE(0, 'Nam'),
        FEMALE(1, 'Nữ')
        int id
        String name
        Sex(id, name) {this.id = id; this.name = name}
    }

    String firstName
    String lastName
    Sex sex
    String phone

    static belongsTo = [room: Room]

    Date dateCreated
    Date lastUpdated

    static constraints = {
        firstName nullable: false
        lastName nullable: true
        sex nullable: false
        room nullable: false
        phone nullable: false

        dateCreated()
    }

    static mapping = {
        version(false)
    }

    @Override
    ObjectType objectType() {
        return ObjectType.RENTER;
    }
}
