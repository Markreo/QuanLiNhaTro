/**
 * PHÒNG TRỌ
 */
package com.quanlinhatro
import static java.util.Calendar.*
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
                      leases: Lease, //cho thuê những dịch vụ này//lease
                      uses: Service] //những dịch vụ sẽ tính (cho tháng sau)

    double price //to service
    double amount = 0

    int dueDate = 0 //day of month

    Date dateCreated
    Date lastUpdated

    static constraints = {
        name nullable: false, unique: ['region']
        status nullable: false
        region nullable: false
        renters nullable: true
        leases nullable: true
        amount nullable: true
        price nullable: false //to service
        dueDate nullable: false
        dateCreated()
    }

    static mapping = {
        version(false)
        renters joinTable: [name: 'room_renter', column: 'room_id']
        uses joinTable: [name: 'room_uses_service', key: 'service_id', column:'room_id']
    }

    static transients = ['getDueDateThisMonth', 'convertLease']

    Date getDueDateThisMonth() {
        def cal = Calendar.instance
        def days = Calendar.instance.getActualMaximum(Calendar.DAY_OF_MONTH)
        return new Date(year: cal[YEAR], month: cal[MONTH],date: dueDate < days ? dueDate : days);
    }


    @Override
    ObjectType objectType() {
        return ObjectType.ROOM;
    }

    Lease convertLease(Service service){
        Lease lease = new Lease(price: service.currentPrice)
       /* switch (service.unit){
            case Service.Unit.TIME:
                lease.value1 = 1
                break
            case Service.Unit.CHIEC:
                lease.value1 = service.currentValue
                break
            //TODO:find last service, get value 2 and set for value1 of new lease
        }*/
        return lease
    }
}
