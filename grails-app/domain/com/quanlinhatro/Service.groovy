/**
 * DỊCH VỤ/PHÁT SINH
 */
package com.quanlinhatro

import grails.converters.JSON
import groovy.transform.ToString

@ToString
class Service {

    //cái, máy
    enum Unit{
        TIME(0, "Lần"),
        M3(1, "Mét khối"),
        KG(2, "Kilogram"),
        H(3, "Giờ"),
        NG(4, "Người"),
        PHONG(5, "Phòng"),
        CHIEC(6, "Chiếc"),
        KGW(7, "Kilowatt"),//điện
        M3_2(8, "Mét khối nước"),//nước
        TIENPHONG(9, "Tiền phòng")// là service mặc địh của từng phòng

        int id
        String name
        Unit(id, name){this.id = id; this.name = name}

        boolean isNEEDGETVALUES() {
            return this.id in [6, 7, 8]
        }

        static def GETLIST() {
            return Unit.values().findAll{it.id in [1, 2, 3, 4, 5, 6]}
        }
    }

    Service parent

    String name //điện, nước, rác, internet
    Unit unit = Unit.TIME
    int currentValue
    Double currentPrice

    Date dateCreated
    Date lastUpdated

    static transients = ['getStrJSON']

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

    String getStrJSON(){
        return ([ name: this.name, unit: this.unit.id, currentPrice: this.currentPrice] as JSON)
    }
}
