
                                        người thuê: 1, 2, 3{
                                            Họ tên
                                            giới tính
                                            ngày sinh
                                            nguyên quán
                                            CMND
                                            Sđt
                                        }
                                        giá phòng/tháng/năm/quý
                                        ngày thanh toán tiền phòng
                                        hợp đồng
                                        giấy đăng kí tạm trú
                                        từ ngày -> đến ngày
                                        hợp đồng
                                        giá điện
                                        giá nước
                                        rác
                                        internet
                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 bordered-ddd">
                                            <div class="row">
                                                <div class="col-xs-12">
                                                    <div class="dashboard-box no-shadow">
                                                        <div class="box-header">
                                                            <div class="deadline">
                                                                Cho thuê ${room.name}
                                                            </div>
                                                        </div>
                                                        <div class="box-tabbs">
                                                            <div id="WiredWizard" class="wizard wizard-wired" data-target="#WiredWizardsteps">
                                                                <ul class="steps">
                                                                    <li data-target="#wiredstep1" class="active"><span class="step">1</span><span class="title">Người thuê trọ</span><span class="chevron"></span></li>
                                                                    <li data-target="#wiredstep2"><span id="step2" class="step">2</span><span class="title">Cho thuê</span> <span class="chevron"></span></li>
                                                                    <li data-target="#wiredstep3"><span class="step">3</span><span class="title">Hợp đồng/giấy tờ</span> <span class="chevron"></span></li>
                                                                </ul>
                                                            </div>
                                                            <div class="step-content no-shadow" id="WiredWizardsteps" style="padding-left:0px">
                                                                <div class="step-pane active" id="wiredstep1">
                                                                    <h6 class="row-title before-green no-margin-top">Người thuê trọ</h6>
                                                                    <div class="col-md-12">

                                                                        <g:formRemote name="user_rent_room" url="[controller: 'room', action: 'saveForRent']" role="form" onSuccess="returnSaveForRent(data);">
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
                                                                    <h6 class="row-title before-green no-margin-top"> Cho thuê</h6>
                                                                    <div class="horizontal-space"></div>
                                                                    <div class="col-lg-8 col-sm-8 col-xs-12" style="padding-left: 25px">
                                                                        <div class="widget">
                                                                            <div class="widget-header bordered-bottom bordered-palegreen">
                                                                                <span class="widget-caption">Bảng giá cho thuê phòng</span>
                                                                            </div>
                                                                            <div class="widget-body">
                                                                                <div>
                                                                                    <g:formRemote name="saveRoomUsesService" url="[controller: 'room', action: 'saveRoomUsesService']" class="form-horizontal form-bordered" role="form" onSuccess="returnSaveForRent(data);">
                                                                                        <g:hiddenField name="room" value="${room.id}"/>
                                                                                        <div class="form-group">
                                                                                            <label class="col-xs-2 control-label no-padding-right">Tên dịch vụ</label>
                                                                                            <div class="col-xs-8 text-align-center">
                                                                                                <label class="control-label">Giá dịch vụ</label>
                                                                                            </div>
                                                                                            <div class="col-xs-2">
                                                                                            </div>
                                                                                        </div>
                                                                                        <g:each in="${room.region.services}" var="service">
                                                                                            <div class="form-group">
                                                                                                <label class="col-xs-2 control-label no-padding-right">${service.name}:</label>
                                                                                                <g:hiddenField name="serviceId" value="${service.id}"/>
                                                                                                <div class="col-xs-8">
                                                                                                    <input name="currentPrice" type="text" class="form-control" value="${room.uses.find {it.parent.id == service.id}.currentPrice ?: service.currentPrice}" placeholder="Giá ${service.name}">
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
                                                                                                <g:select name="add_more" from="${room.region.services}" optionValue="name" optionKey="id" class="form-control"></g:select>
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
    }

    function returnSaveForRent(data){
        if(data.response == 'OK') {
            //TODO: add 'id' each person
            complete_form(data);
        }
    }

    $(document).ready(function () {
        $(".wizard").trigger('mousedown.wizard.data-api')
    })
</script>
