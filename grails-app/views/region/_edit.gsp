
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
