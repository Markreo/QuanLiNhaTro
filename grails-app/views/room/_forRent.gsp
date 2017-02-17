
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
                                                                    <li data-target="#wiredstep2" id="step2"><span class="step">2</span><span class="title">Bảng giá</span> <span class="chevron"></span></li>
                                                                    <li data-target="#wiredstep3"><span class="step">3</span><span class="title">Hợp đồng/giấy tờ</span> <span class="chevron"></span></li>
                                                                </ul>
                                                            </div>
                                                            <div class="step-content no-shadow" id="WiredWizardsteps" style="padding-left:0px">
                                                                <div class="step-pane active" id="wiredstep1">
                                                                    <h6 class="row-title before-green no-margin-top">Người thuê trọ</h6>
                                                                    <div class="col-md-12">

                                                                        <form role="form">
                                                                            <div class="form-title">
                                                                                Đại diện chủ phòng
                                                                            </div>

                                                                            <g:render template="/renter/new_renter"/>
                                                                            <div class="title-top" id="add_renter" onclick="add_renter()">
                                                                                Thêm người thuê phòng <i class="fa fa-plus"></i>
                                                                            </div>


                                                                        </form>

                                                                    </div>
                                                                </div>
                                                                <div class="step-pane" id="wiredstep2">
                                                                    <h6 class="row-title before-green no-margin-top">Bảng giá</h6>
                                                                </div>
                                                                <div class="step-pane" id="wiredstep3">
                                                                    <h6 class="row-title before-green no-margin-top">Hợp đồng</h6>
                                                                </div>
                                                            <div class="clearfix"></div>
                                                            </div>
                                                            <div class="actions actions-footer" id="WiredWizard-actions">
                                                                <div class="btn-group">
                                                                    <button type="button" class="btn btn-default btn-sm btn-prev"> <i class="fa fa-angle-left"></i>Trước</button>
                                                                    <button type="button" class="btn btn-default btn-sm btn-next" data-last="Xong">Tiếp<i class="fa fa-angle-right"></i></button>
                                                                </div>
                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        %{--<div id="registration-form">
                                            <form role="form">
                                                <div class="form-title">
                                                    User Information
                                                </div>
                                                <div class="form-group">
                                                    <span class="input-icon icon-right">
                                                        <input type="text" class="form-control" id="userameInput" placeholder="Username">
                                                        <i class="glyphicon glyphicon-user circular"></i>
                                                    </span>
                                                </div>
                                                <div class="form-group">
                                                    <span class="input-icon icon-right">
                                                        <input type="text" class="form-control" id="emailInput" placeholder="Email Address">
                                                        <i class="fa fa-envelope-o circular"></i>
                                                    </span>
                                                </div>
                                                <div class="form-group">
                                                    <span class="input-icon icon-right">
                                                        <input type="text" class="form-control" id="passwordInput" placeholder="Password">
                                                        <i class="fa fa-lock circular"></i>
                                                    </span>
                                                </div>
                                                <div class="form-group">
                                                    <span class="input-icon icon-right">
                                                        <input type="text" class="form-control" id="confirmPasswordInput" placeholder="Confirm Password">
                                                        <i class="fa fa-lock circular"></i>
                                                    </span>
                                                </div>
                                                <div class="form-title">
                                                    Personal Information
                                                </div>
                                                <div class="row">
                                                    <div class="col-sm-6">
                                                        <div class="form-group">
                                                            <span class="input-icon icon-right">
                                                                <input type="text" class="form-control" placeholder="Name">
                                                                <i class="fa fa-user"></i>
                                                            </span>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-6">
                                                        <div class="form-group">
                                                            <span class="input-icon icon-right">
                                                                <input type="text" class="form-control" placeholder="Family">
                                                                <i class="fa fa-user"></i>
                                                            </span>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-sm-6">
                                                        <div class="form-group">
                                                            <span class="input-icon icon-right">
                                                                <input type="text" class="form-control" placeholder="Phone">
                                                                <i class="glyphicon glyphicon-earphone"></i>
                                                            </span>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-6">
                                                        <div class="form-group">
                                                            <span class="input-icon icon-right">
                                                                <input type="text" class="form-control" placeholder="Mobile">
                                                                <i class="glyphicon glyphicon-phone"></i>
                                                            </span>
                                                        </div>
                                                    </div>
                                                </div>
                                                <hr class="wide">
                                                <div class="row">
                                                    <div class="col-sm-6">
                                                        <div class="form-group">
                                                            <span class="input-icon icon-right">
                                                                <input class="form-control date-picker" id="id-date-picker-1" type="text" data-date-format="dd-mm-yyyy" placeholder="Birth Date">
                                                                <i class="fa fa-calendar"></i>
                                                            </span>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-6">
                                                        <div class="form-group">
                                                            <span class="input-icon icon-right">
                                                                <input type="text" class="form-control" placeholder="Birth Place">
                                                                <i class="fa fa-globe"></i>
                                                            </span>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="checkbox">
                                                        <label>
                                                            <input type="checkbox" class="colored-blue">
                                                            <span class="text">Auto Sign In After Registration</span>
                                                        </label>
                                                    </div>
                                                </div>
                                                <button type="submit" class="btn btn-blue">Register</button>
                                            </form>
                                        </div>--}%

<script>
    function add_renter() {
        $.post("${createLink(controller: 'renter', action: 'new_renter')}", function (html) {
            var div = $("<div></div>").addClass("form-title").after(html)
            var result = div.before(html)
            console.log(result.html())
            $("#add_renter").before(html)
        })
    }
</script>
