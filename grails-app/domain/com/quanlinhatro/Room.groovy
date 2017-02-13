/**
 * PHÒNG TRỌ
 */
package com.quanlinhatro

class Room extends Base{
    enum Status {
        NEW(0, "Đang trống"),
        MORTGAGED(1, "Đã đặt cọc"),
        ARERENTING(2, "Đang cho thuê"),
        REPAIRING(3, "Đang sửa chữa"),
        DROP(4, "Đã hỏng")

        int id
        String name
        Status(id, name) {this.id =  id; this.name = name}
    }

    String name
    Status status = Status.NEW
    static belongsTo = [region: Region]
    static hasMany = [renters: Renter]

    Date dateCreated
    Date lastUpdated

    static constraints = {
        name nullable: false, unique: ['region']
        status nullable: false
        region nullable: false
        renters nullable: true
        dateCreated()
    }

    static mapping = {
        version(false)
    }


    @Override
    ObjectType objectType() {
        return ObjectType.ROOM;
    }
}
