/**
 * DỊCH VỤ/PHÁT SINH
 */
package com.quanlinhatro

class Service {

    enum Unit{
        TIME(0, "Lần"),
        M3(1, "Mét khối"),
        KG(2, "Kg"),
        H(3, "Giờ")
        int id
        String name
        Unit(id, name){this.id = id; this.name = name}
    }

    static belongsTo = [region: Region]

    String name
    Unit unit = Unit.TIME
    Double unitPrice


    static constraints = {
        region nullable: false
        unit nullable: false
        unitPrice nullable: false
    }

    static mapping = {
        version(false)
    }
}
