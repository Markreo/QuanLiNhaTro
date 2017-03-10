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
        PHONG(5, "Phòng"),
        CHIEC(6, "Chiếc")
        int id
        String name
        Unit(id, name){this.id = id; this.name = name}
    }

    Service parent

    String name //điện, nước, rác, internet
    Unit unit = Unit.TIME
    int currentValue
    Double currentPrice

    Date dateCreated
    Date lastUpdated


    static constraints = {
        unit nullable: false
        currentValue nullable: true
        currentPrice nullable: false
        parent nullable: true
        dateCreated()
    }

    static mapping = {
        version(false)
    }
}
