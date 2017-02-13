
<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
    <div class="row">
        <div class="col-xs-12">
            <div class="dashboard-box">

                <div class="box-header">
                    <div class="deadline">
                        Thêm phòng trọ
                    </div>
                </div>


                <div class="box-tabbs">
                    <div class="tabbable">
                        <div class="tab-content tabs-flat no-padding">
                            <div class="tab-pane animated fadeIn no-padding-bottom active">
                                <div class="col-md-12">
                                    <div class="horizontal-space"></div>
                                    <qlnhatro:renderError/>
                                </div>
                                <div class="col-xs-12 col-md-12 animated fadeInDown">
                                    <g:formRemote role="form" name="form" url="[controller: 'room', action: 'save']" onSuccess="complete_form(data);">



                                        <div class="row">
                                            <div class="col-md-6">
                                            </div>
                                            <div class="col-md-6 col-sm-12">
                                                <div class="form-group no-margin-bottom pull-right">
                                                    Thêm nhiều phòng
                                                    <label class="no-margin">
                                                        <input class="checkbox-slider yesno slider-icon colored-slider" type="checkbox">
                                                        <span class="text"></span>
                                                    </label>
                                                </div>
                                            </div>


                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label>Tên phòng</label>
                                                    <span class="input-icon icon-right">
                                                        <input class="form-control" name="name" placeholder="Tên phòng" type="text" value="${room?.name}" required>
                                                        <i class="fa fa-credit-card themeprimary"></i>
                                                    </span>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label>Số lượng</label>
                                                    <input name="quantity" type="number" min="0" max="100" class="form-control" placeholder="Số lượng"/>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label>Tình trạng</label>
                                                    <g:select name="status" from="${com.quanlinhatro.Room.Status}" optionValue="name" class="form-control" />
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label>Giá</label>
                                                    <span class="input-icon icon-right">
                                                        <input class="form-control" name="address" placeholder="Giá" type="number" value="${room?.price}">
                                                        <i class="fa  fa-money themeprimary"></i>
                                                    </span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">

                                        </div>
                                    </g:formRemote>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="ql-footer"></div>
                <qlnhatro:renderButton/>
            </div>
        </div>
    </div>
</div>
</div>