<%@ page import="com.quanlinhatro.Service" %>

<div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
    <div class="row">
        <div class="col-xs-12">
            <div class="dashboard-box">
                <div class="box-header">
                    <div class="deadline">
                        ${region.id ? "Thông tin khu quản lí" : "Thêm khu quản lí"}
                    </div>
                </div>

                <div class="box-tabbs">
                    <div class="tabbable">
                        <div class="tab-content tabs-flat no-padding">
                            <div class="tab-pane animated fadeIn no-padding-bottom active">
                                <div class="col-md-12">
                                    <div class="horizontal-space"></div>
                                    <qlnhatro:renderError/>
                                    <g:formRemote role="form" name="form" url="[controller: 'region', action: 'save']" onSuccess="complete_form(data);">
                                        <div class="form-title">
                                            Thông tin khu
                                        </div>
                                        <div class="row">
                                            <div class="col-sm-12">
                                                <div class="form-group">
                                                    <label>Tên Khu</label>
                                                    <span class="input-icon icon-right">
                                                        <input class="form-control" name="name" placeholder="Tên khu" type="text" value="${region?.name}" required>
                                                        <i class="fa fa-credit-card themeprimary"></i>
                                                    </span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-sm-12">
                                                <div class="form-group">
                                                    <label>Địa chỉ</label>
                                                    <span class="input-icon icon-right">
                                                        <input class="form-control" name="address" placeholder="Địa chỉ" type="text" value="${region?.address}">
                                                        <i class="fa fa-map-marker themeprimary"></i>
                                                    </span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-title">
                                            Thông tin dịch vụ
                                        </div>
                                        <div class="row" id="region_service_header">
                                            <div class="col-sm-4 col-xs-4">
                                                <div class="form-group no-margin-bottom no-padding-right">
                                                    <label>Tên dịch vụ</label>
                                                </div>
                                            </div>
                                            <div class="col-sm-3 col-xs-3">
                                                <div class="form-group  no-margin-bottom no-padding-right">
                                                    <label>Đơn vị tính</label>
                                                </div>
                                            </div>
                                            <div class="col-sm-4 col-xs-4">
                                                <div class="form-group no-margin-bottom">
                                                    <label>Đơn giá</label>
                                                </div>
                                            </div>
                                        </div>
                                        <div id="region_service">
                                            <div class="row" id="region_service_first">
                                                %{--<div class="col-sm-4 col-xs-4 no-padding-right">
                                                <div class="form-group">
                                                    <input name="services.name" type="text" class="form-control" value="Phòng trọ"/>
                                                </div>
                                            </div>
                                                <div class="col-sm-3 col-xs-3 no-padding-right">
                                                    <div class="form-group">
                                                        <g:select name="services.unit" class="form-control" from="${com.quanlinhatro.Service.Unit.values()}" optionValue="name" value="${com.quanlinhatro.Service.Unit.PHONG}"/>
                                                    </div>
                                                </div>
                                                <div class="col-sm-4 col-xs-4">
                                                    <div class="form-group">
                                                        <input name="services.currentPrice" type="text" class="form-control  text-align-right" placeholder="0.0 vnđ"/>
                                                    </div>
                                                </div>--}%
                                            </div>
                                            <div class="row">
                                                <div class="col-sm-4 col-xs-4 no-padding-right">
                                                    <div class="form-group">
                                                        <input name="services.name" type="text" class="form-control" placeholder="Tên dịch vụ" value="Điện" required />
                                                    </div>
                                                </div>
                                                <div class="col-sm-3 col-xs-3 no-padding-right">
                                                    <div class="form-group">
                                                        <g:select name="services.unit" class="form-control" from="${com.quanlinhatro.Service.Unit.values()}" optionValue="name" value="${com.quanlinhatro.Service.Unit.KG}" required="required"/>
                                                    </div>
                                                </div>
                                                <div class="col-sm-4 col-xs-4">
                                                    <div class="form-group">
                                                        <input name="services.currentPrice" type="text" class="form-control text-align-right" placeholder="0.0 vnđ" required/>
                                                    </div>
                                                </div>
                                                <div class="col-sm-1 col-xs-1">
                                                    <div class="form-group">
                                                        <a href="javascript:void(0);" class="btn btn-danger  btn-circle btn-xs"><i class="fa fa-times"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-sm-4 col-xs-4 no-padding-right">
                                                    <div class="form-group">
                                                        <input name="services.name" type="text" class="form-control" value="Nước" placeholder="Tên dịch vụ" required />
                                                    </div>
                                                </div>
                                                <div class="col-sm-3 col-xs-3 no-padding-right">
                                                    <div class="form-group">
                                                        <g:select name="services.unit" class="form-control" from="${com.quanlinhatro.Service.Unit.values()}" optionValue="name" value="${com.quanlinhatro.Service.Unit.M3}" required="required"/>
                                                    </div>
                                                </div>
                                                <div class="col-sm-4 col-xs-4">
                                                    <div class="form-group">
                                                        <input name="services.currentPrice" type="text" class="form-control text-align-right" placeholder="0.0 vnđ" required/>
                                                    </div>
                                                </div>
                                                <div class="col-sm-1 col-xs-1">
                                                    <div class="form-group">
                                                        <a href="javascript:void(0);" class="btn btn-danger  btn-circle btn-xs"><i class="fa fa-times"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="title-top" id="add_renter" onclick="add_service()">
                                            Thêm dịch vụ <i class="fa fa-plus"></i>
                                        </div>
                                    </g:formRemote>
                                </div>
                            </div>
                        </div>
                    </div>
                    <qlnhatro:renderButton/>
                </div>
            </div>
        </div>
    </div>
</div>

<div id="region_service_add" style="display: none">
    <div class="row">
        <div class="col-sm-4 col-xs-4 no-padding-right">
            <div class="form-group">
                <input name="services.name" type="text" class="form-control" placeholder="Tên dịch vụ" required />
            </div>
        </div>
        <div class="col-sm-3 col-xs-3 no-padding-right">
            <div class="form-group">
                <g:select name="services.unit" class="form-control" from="${com.quanlinhatro.Service.Unit.values()}" optionValue="name" value="${com.quanlinhatro.Service.Unit.TIME}" required="required"/>
            </div>
        </div>
        <div class="col-sm-4 col-xs-4">
            <div class="form-group">
                <input name="services.currentPrice" type="text" class="form-control text-align-right" placeholder="0.0 vnđ" required/>
            </div>
        </div>
        <div class="col-sm-1 col-xs-1">
            <div class="form-group">
                <a href="javascript:void(0);" class="btn btn-danger  btn-circle btn-xs"><i class="fa fa-times"></i></a>
            </div>
        </div>
    </div>
</div>

<script>
    function add_service() {
        var add_html = $("#region_service_add").html()
        $("#region_service").append(add_html)

    }
</script>