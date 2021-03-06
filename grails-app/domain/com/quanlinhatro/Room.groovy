/**
 * PHÒNG TRỌ
 */
package com.quanlinhatro

import groovy.transform.ToString
import static java.util.Calendar.*

@ToString
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

    long price //to service
    long amount = 0

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
        renters joinTable: [name: 'room_renter', column: 'renter_id']
        uses joinTable: [name: 'room_uses_service', key: 'room_id', column:'service_id']
    }

    static transients = ['getDueDateThisMonth', 'convertValue1', 'convertValue2','getLeaseThisMonth', 'getElectricService', 'getWaterService', 'getUseService']

    Date getDueDateThisMonth() {
        def cal = Calendar.instance
        def days = Calendar.instance.getActualMaximum(Calendar.DAY_OF_MONTH) as int
        return new Date().copyWith(
                year: cal[YEAR],
                month: dueDate < cal[DATE] ? cal[MONTH] + 1 : cal[MONTH] ,
                dayOfMonth: (dueDate < days ? dueDate : days),
                hourOfDay: 0,
                minute: 0,
                second: 0)
    }


    @Override
    ObjectType objectType() {
        return ObjectType.ROOM;
    }

    def int convertValue1(Service service) {
        switch (service.unit) {
            case Service.Unit.NG:
                return this.renters.size()
                break
            case Service.Unit.PHONG:
                return 1
                break
            default:
                return service.currentValue
            break
        }
        return 0;
    }

    def int convertValue2(Service service) {
        switch (service.unit) {
            case Service.Unit.KGW:
            case Service.Unit.M3_2:
                return service.currentValue
                break
            default:
                return 0;
                break
        }
        return 0;
    }

    Lease getLeaseThisMonth() {
        return Lease.findByRoomAndFromDateLessThanEqualsAndToDateGreaterThanEquals(this, new Date(),new Date())
    }

    def getElectricService() {
        return this.uses.find {it.unit == Service.Unit.KGW}
    }

    def getWaterService() {
        return this.uses.find {it.unit == Service.Unit.M3_2}
    }

    def getUseService(Service.Unit unit) {
        return this.leaseThisMonth?.details?.find{it.parseService()?.unit == unit}
    }
}
