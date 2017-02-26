
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
                                                                    <form role="form">
                                                                        <div class="col-md-12">
                                                                            <p>Phòng ${room.name} sẽ được cho thuê với các giá</p>
                                                                            note: thêm các dịch vụ
                                                                        </div>
                                                                        <div class="col-sm-6">
                                                                            <label>Giá phòng:</label>
                                                                            <div class="form-group">
                                                                                <input type="text" class="form-control">
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-sm-6">
                                                                            <label>Giá điện: </label>
                                                                            <div class="form-group">
                                                                                <input type="text" class="form-control" value="region.services.dien">
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-sm-6">
                                                                            <label>Giá nước:</label>
                                                                            <div class="form-group">
                                                                                <input type="text" class="form-control">
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-sm-6">
                                                                            <label>Ngày thanh toán tiền phòng:</label>
                                                                            <div class="form-group">
                                                                                <input type="text" class="form-control">
                                                                            </div>
                                                                        </div>
                                                                    </form>


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
            console.log('return true')
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
