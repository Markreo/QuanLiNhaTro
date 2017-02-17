/**
 * PHÒNG TRỌ
 */
package com.quanlinhatro

class Room extends Base{
    enum Status {
        NEW(0, "Đang trống", "Cho thuê"),
        MORTGAGED(1, "Đã đặt cọc", "Cập nhật"),
        ARERENTING(2, "Đang cho thuê", "Cập nhật"),
        REPAIRING(3, "Đang sửa chữa", "Xong"),
        DROP(4, "Đã hỏng", "Hủy")

        int id
        String name
        String action
        Status(id, name, action) {this.id =  id; this.name = name; this.action = action}
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
