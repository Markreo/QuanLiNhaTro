<%@ page import="com.quanlinhatro.Service" %>
hợp đồng
giấy đăng kí tạm trú
từ ngày -> đến ngày
hợp đồng

<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 bordered-ddd">
    <div class="row">
        <div class="col-xs-12">
            <div class="dashboard-box no-shadow">
                <div class="box-header">
                    <div class="deadline">
                        Bảng giá ${room.name}
                    </div>
                </div>
                <div class="box-tabbs">
                    <div id="WiredWizard" class="wizard wizard-wired" data-target="#WiredWizardsteps">
                        <ul class="steps">
                            <li data-target="#wiredstep1" class="active"><span class="step">1</span><span class="title">Người thuê trọ</span><span class="chevron"></span></li>
                            <li data-target="#wiredstep2"><span id="step2" class="step">2</span><span class="title">Bảng giá</span> <span class="chevron"></span></li>
                            <li data-target="#wiredstep3"><span class="step">3</span><span class="title">Hợp đồng/giấy tờ</span> <span class="chevron"></span></li>
                            <li data-target="#wiredstep4"><span class="step">4</span><span class="title">Cho thuê</span> <span class="chevron"></span></li>
                        </ul>
                    </div>
                    <div class="step-content no-shadow" id="WiredWizardsteps" style="padding-left:0px">
                        <div class="step-pane active" id="wiredstep1">
                            <h6 class="row-title before-green no-margin-top">Người thuê trọ</h6>
                            <div class="col-md-12">

                                <g:formRemote name="user_rent_room" url="[controller: 'room', action: 'saveRenter']" role="form" onSuccess="returnSaveRenter(data);">
                                    <g:hiddenField name="room" value="${room.id}"/>
                                    <div class="form-title">
                                        Đại diện chủ phòng
                                    </div>

                                    <g:render template="/renter/new_renter"/>
                                    <div class="title-top" id="add_renter" onclick="add_renter()">
                                        Thêm người thuê phòng <i class="fa fa-plus"></i>
                                    </div>


                                </g:formRemote>

                            </div>

                        </div>
                        <div class="step-pane" id="wiredstep2">
                            <h6 class="row-title before-green no-margin-top"> Bảng giá</h6>
                            <div class="horizontal-space"></div>
                            <div class="col-lg-8 col-sm-8 col-xs-12" style="padding-left: 25px">
                                <div class="widget">
                                    <div class="widget-header bordered-bottom bordered-palegreen">
                                        <span class="widget-caption">Bảng giá Bảng giá phòng</span>
                                    </div>
                                    <div class="widget-body">
                                        <div>
                                            <g:formRemote name="saveRoomUsesService" url="[controller: 'room', action: 'saveRoomUsesService']" class="form-horizontal form-bordered" role="form" onSuccess="returnSaveRoomUseService(data);">
                                                <g:hiddenField name="room" value="${room.id}"/>
                                                <div class="form-group">
                                                    <label class="col-xs-2 control-label no-padding-right">Tên dịch vụ</label>
                                                    <div class="col-xs-4 text-align-center">
                                                        <label class="control-label">Giá dịch vụ</label>
                                                    </div>
                                                    <div class="col-xs-2">
                                                    </div>
                                                </div>
                                                <g:each in="${room.region.listDefault}" var="service">
                                                    <div class="form-group">
                                                        <label class="col-xs-2 control-label no-padding-right">${service.name}:</label>
                                                        <g:hiddenField name="serviceId" value="${service.id}"/>
                                                        <div class="col-xs-8">
                                                            <input name="currentPrice" type="text" class="form-control" value="${room.uses.find {it.parent.id == service.id}?.currentPrice ?: service?.currentPrice}" placeholder="Giá ${service.name}">
                                                        </div>
                                                        <div class="col-xs-2">
                                                            %{--TODO: remove this row, add select box--}%
                                                            <a class="btn btn-default">DELETE</a>
                                                        </div>
                                                    </div>
                                                </g:each>

                                                <div class="form-group">
                                                    <label class="col-xs-2 control-label no-padding-right">Thêm dịch vụ:</label>
                                                    <div class="col-xs-8">
                                                        <g:select name="add_more" from="${room.region.listDefault}" optionValue="name" optionKey="id" class="form-control"></g:select>
                                                    </div>
                                                    <div class="col-xs-2">
                                                        <a class="btn btn-default">Thêm</a>
                                                    </div>
                                                </div>
                                            </g:formRemote>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-4 col-xs-12">
                                <ul>
                                    <li>ghi chú 1.</li>
                                    <li>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</li>
                                    <li>Ut suscipit urna eu lorem blandit fringilla. Curabitur volutpat pulvinar dolor et rutrum. Duis sit amet ullamcorper lacus, vel ultrices purus.</li>
                                </ul>
                            </div>



                        </div>
                        <div class="step-pane" id="wiredstep3">
                            <h6 class="row-title before-green no-margin-top">Hợp đồng</h6>

                            <p>thời gian từ ngày, đến ngày</p>
                            <p>Hợp đồng</p>
                            <p>Giấy đăng kí tạm trú, tạm vắng</p>
                            <p>ghi chú</p>
                        </div>
                        <div class="step-pane" id="wiredstep4">
                            <h6 class="row-title before-green no-margin-top">Cho thuê</h6>

                           <ul>
                               <li>Thời gian đóng tiền phòng hàng tháng</li>
                               <li>còn x ngày đến lần đóng tiền tiếp theo</li>
                               <li>yes/no cộng dồn qua tháng tiếp theo</li>
                           </ul>
                            <div style="padding-left:10px">
                                <g:formRemote name="saveDueDate" url="[controller: 'room', action: 'saveDueDate']" class="form-horizontal form-bordered" role="form" onSuccess="returnSaveRenter(data);">
                                    <g:hiddenField name="room" value="${room.id}"/>
                                    <div class="form-group">
                                        <label class="col-xs-3 control-label no-padding-right">Ngày đóng tiền hàng tháng: </label>
                                        <div class="col-xs-3 ">
                                            <g:select from="${(1..31)}" name="dueDate" class="form-control text-align-center" id="room_dueDate"></g:select>
                                        </div>
                                        <div class="col-xs-8" id="mes_dueDate" style="display: none;">
                                            <label class="control-label" id="mes_dueDate_label"> </label>
                                            <div class="checkbox" style="display: inline;">
                                                <label>
                                                    <input type="checkbox" class="colored-success" onchange="nextMonth(this)">
                                                    <span class="text" style="margin-top:6px; padding-left: 5px">Cộng dồn sang tháng sau!</span>
                                                </label>
                                            </div>
                                        </div>

                                    </div>
                                    <div class="form-group" id="add_more">
                                        <label class="col-xs-3 control-label no-padding-right" id="money_of_month_mess">Tiền phòng tháng ${new Date().format('MM')}: </label>
                                        <div class="col-xs-3 ">
                                            <div class="control-group">
                                                <div class="radio">
                                                    <label>
                                                        <input name="price" type="radio" class="colored-blue" value = "800000" checked>
                                                        <span class="text" id="days_month_mess"> Ngày: 800,000</span>
                                                    </label>
                                                </div>

                                                <div class="radio">
                                                    <label>
                                                        <input name="price" type="radio" class="colored-danger" value="1600000">
                                                        <span class="text"> Cả tháng: 1,600,000</span>
                                                    </label>
                                                </div>

                                                <div class="radio">
                                                    <label>
                                                        <input name="price" type="radio" class="colored-success" value="1200000">
                                                        <span class="text"> Khác: </span>
                                                        <input type="text" style="right: 0; width: auto" placeholder="Nhập vào đây"/>
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group" id="getvalueService">

                                    </div>
                                </g:formRemote>
                            </div>
                        </div>
                    <div class="clearfix"></div>
                    </div>
                    <div class="actions actions-footer" id="WiredWizard-actions">
                        <div class="btn-group">
                            <button type="button" class="btn btn-default btn-sm btn-prev"> <i class="fa fa-angle-left"></i>Trước</button>
                            <button type="button" class="btn btn-default btn-sm btn-next" data-last="Xong" onclick="return check_forrent()">Tiếp<i class="fa fa-angle-right"></i></button>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>
<script>
    var z = 0;

    function add_renter() {
        $.post("${createLink(controller: 'renter', action: 'new_renter')}", function (html) {
            var div = $("<div></div>").addClass("form-title").after(html);
            var result = div.before(html);
            console.log(result.html())
            $("#add_renter").before(html);
        })
    }

    function check_forrent() {
        if($(document).find("#wiredstep1").hasClass("active")) {
            //step 1: user
            //TODO: check required
            $("#user_rent_room").submit();
            console.log('user')
            return true;
        }
        if($(document).find("#wiredstep2").hasClass("active")) {
            //step 1: service
            //TODO: check required
            $("#saveRoomUsesService").submit();
            console.log('saveRoomUsesService')
            return true;
        }

        if($(document).find("#wiredstep4").hasClass("active")) {
            //step 4: service
            //TODO: check required
            $("#saveDueDate").submit();
            console.log('saveDueDate')
            return true;
        }
    }

    function returnSaveRenter(data){
        if(data.response == 'OK') {
            //TODO: add 'id' each person
            complete_form(data);
        }
    }
    
    function returnSaveRoomUseService(data) {
        if(data.response == 'OK') {
            //TODO: add 'id' each person
            complete_form(data);
        }
    }

    function nextMonth(_this) {
        if ( $(_this).is(":checked"))
        {
            $("#days_month_mess").html("Tiền phòng tháng ${new Date().format('MM')}, 04: " + z)
            // it is checked
        } else{
            $("#days_month_mess").html("Tiền phòng tháng ${new Date().format('MM')}: ")
        }
    }

    $(document).ready(function () {
        $(".wizard").trigger('mousedown.wizard.data-api')

        $("#room_dueDate").on('change',function () {
            var d = $(this).val()

            $.post("${createLink(controller: 'home', action: 'countDate')}", {id: d}, function (resp) {
                z = Number(resp);
                if(z < 28 && z !=0) {
                    $("#mes_dueDate").show();
                    $("#mes_dueDate_label").text("Còn " + z + " ngày đến lần đóng tiền tiếp theo");
                }

            })
        })
    })
</script>
