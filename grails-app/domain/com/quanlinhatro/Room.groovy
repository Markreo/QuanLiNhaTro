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
    static hasMany = [renters: Renter,
                      services: Service, //cho thuê những dịch vụ này
                      uses: Service] //những dịch vụ sẽ tính (cho tháng sau)

    double price //to service

    Date dateCreated
    Date lastUpdated

    static constraints = {
        name nullable: false, unique: ['region']
        status nullable: false
        region nullable: false
        renters nullable: true
        services nullable: true

        price nullable:false //to service

        dateCreated()
    }

    static mapping = {
        version(false)
        renters joinTable: [name: 'room_renter', column: 'room_id']
        services joinTable: [name: 'lease', key : 'service_id']
        uses joinTable: [name: 'room_uses_service', key: 'service_id', column:'room_id']
    }


    @Override
    ObjectType objectType() {
        return ObjectType.ROOM;
    }
}
