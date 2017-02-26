/**
 * DỊCH VỤ/PHÁT SINH
 */
package com.quanlinhatro

class Service {

    enum Unit{
        TIME(0, "Lần"),
        M3(1, "Mét khối"),
        KG(2, "Kilogram"),
        H(3, "Giờ"),
        NG(4, "Người"),
        PHONG(5, "Phòng")
        int id
        String name
        Unit(id, name){this.id = id; this.name = name}
    }

    Region region
    static belongsTo = Room
    static hasMany = [rooms: Room] //cho thuê

    String name //điện, nước, rác, internet
    Unit unit = Unit.TIME
    Double currentPrice

    Date dateCreated
    Date lastUpdated


    static constraints = {
        region nullable: false
        unit nullable: false
        currentPrice nullable: false
        dateCreated()
    }

    static mapping = {
        version(false)
        rooms joinTable: [name: 'lease',key : 'room_id']
    }
}
