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


    //TODO: edit field name
    String firstName
    String lastName
    Sex sex = Sex.MALE
    String phone
    String userID
    String birthPlace
    int birthYear


    Date dateCreated
    Date lastUpdated

    static constraints = {
        firstName nullable: false
        lastName nullable: true
        sex nullable: false
        phone nullable: false

        dateCreated()
    }

    static mapping = {
        version(false)
    }

    static transients = ['getFullname']

    String getFullname() {
        return firstName + " " + lastName
    }

    @Override
    ObjectType objectType() {
        return ObjectType.RENTER;
    }
}
