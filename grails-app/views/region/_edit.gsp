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
                                    <g:formRemote role="form" name="form" url="[controller: 'region', action: 'save']" onSuccess="complete_form(data);">
                                        <div class="horizontal-space"></div>
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
                    <div class="box-visits">
                        <div class="row">
                            <div class="col-lg-6 col-sm-6 col-xs-12">
                                <div class="notification" style="cursor: pointer" onclick="submitform()">
                                    <div class="clearfix">
                                        <div class="notification-icon">
                                            <i class="fa fa-save themeprimary bordered-1 bordered-themeprimary"></i>
                                        </div>
                                        <div class="notification-body">
                                            <span class="title">Lưu</span>
                                            <span class="description">Lưu lại mọi thông tin trên</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 col-sm-6 col-xs-12">
                                <div class="notification" style="cursor: pointer" onclick="cancel()">
                                    <div class="clearfix">
                                        <div class="notification-icon">
                                            <i class="fa fa-times bordered-1 bordered-orange orange"></i>
                                        </div>
                                        <div class="notification-body">
                                            <span class="title">Hủy</span>
                                            <span class="description">Trở về trang trước</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
<script>
    var cancel = function () {
        console.log('cancel')
        var url = "${createLink(controller: 'chuTro', action: 'view')}"
        $.post(url, function (html) {
            console.log(html)
            $(document).find('#chuTro').html(html)
        })
    }
</script>