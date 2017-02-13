
<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
    <div class="row">
        <div class="col-xs-12">
            <div class="dashboard-box">

                <div class="box-header">
                    <div class="deadline">
                        Danh sách phòng cho thuê
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
                                        %{--<div class="col-xs-12 col-md-12">
                                            <table class="table table-hover ql-table dataTable">
                                                <thead>
                                                <tr>
                                                    <th>
                                                        #
                                                    </th>
                                                    <th>
                                                        Tên phòng
                                                    </th>
                                                    <th>
                                                        Trạng thái
                                                    </th>
                                                    <th>
                                                        Số lượng người thuê
                                                    </th>
                                                    <th>
                                                        Giá phòng
                                                    </th>
                                                    <th>
                                                        Ngày thanh toán tiếp
                                                    </th>
                                                    <th style="text-align: center;">
                                                        <a href="${createLink(controller: 'room', action: 'create')}" class="btn btn-default  btn-circle btn-xs" rel="new-tab"><i class="glyphicon glyphicon-plus"></i></a>
                                                    </th>
                                                </tr>
                                                </thead>
                                                <tbody>


                                                <g:each in="${rooms}" var="r" status="i">

                                                    <tr class="">
                                                        <td>
                                                            ${i}
                                                        </td>
                                                        <td>
                                                            ${r.name}
                                                        </td>
                                                        <td>
                                                            ${r.status.name}
                                                        </td>
                                                        <td>
                                                            ${r.renters.size()}
                                                        </td>
                                                        <td>
                                                            Column heading
                                                        </td>
                                                        <td>
                                                            Column heading
                                                        </td>
                                                        <td>
                                                            <a href="#" class="btn btn-xs edit"><i class="fa fa-edit"></i> Chỉnh sửa</a>
                                                            <a href="#" class="btn btn-xs edit"><i class="fa fa-edit"></i> Cho thuê</a>
                                                            <a href="#" class="btn btn-xs delete"><i class="fa fa-trash-o"></i> Xóa</a>
                                                        </td>
                                                    </tr>

                                                </g:each>

                                                </tbody>
                                            </table>

                                        </div>--}%

                                <div class="tickets-container">
                                    <ul class="tickets-list">
                                        <g:each in="${rooms}" var="r">
                                            <li class="ticket-item">
                                                <div class="row">
                                                    <div class="ticket-user col-lg-6 col-sm-12">
                                                        <img src="${resource(dir:'assets/img', file: 'home_' + r.status.id + '.png')}" class="user-avatar">
                                                        <span class="user-name">Phòng ${r.name}</span>
                                                        <span class="user-at">at</span>
                                                        <span class="user-company">${r.status.name}</span>
                                                    </div>
                                                    <div class="ticket-time  col-lg-4 col-sm-6 col-xs-12">
                                                        <div class="divider hidden-md hidden-sm hidden-xs"></div>
                                                        <i class="fa fa-clock-o"></i>
                                                        <span class="time">3 Hours Ago</span>
                                                    </div>
                                                    <div class="ticket-type  col-lg-2 col-sm-6 col-xs-12">
                                                        <span class="divider hidden-xs"></span>
                                                        <span class="type">Payment</span>
                                                    </div>
                                                    <div class="ticket-state bg-palegreen">
                                                        <i class="fa fa-check"></i>
                                                    </div>
                                                </div>
                                            </li>
                                        </g:each>


                                        <li class="ticket-item">
                                            <div class="row">
                                                <div class="ticket-user col-lg-6 col-sm-12">
                                                    <img src="assets/img/avatars/Matt-Cheuvront.jpg" class="user-avatar">
                                                    <span class="user-name">Nicolai Larson</span>
                                                    <span class="user-at">at</span>
                                                    <span class="user-company">Google</span>
                                                </div>
                                                <div class="ticket-time  col-lg-4 col-sm-6 col-xs-12">
                                                    <div class="divider hidden-md hidden-sm hidden-xs"></div>
                                                    <i class="fa fa-clock-o"></i>
                                                    <span class="time">18 Hours Ago</span>
                                                </div>
                                                <div class="ticket-type  col-lg-2 col-sm-6 col-xs-12">
                                                    <span class="divider hidden-xs"></span>
                                                    <span class="type">Issue</span>
                                                </div>
                                                <div class="ticket-state bg-darkorange">
                                                    <i class="fa fa-times"></i>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="ticket-item">
                                            <div class="row">
                                                <div class="ticket-user col-lg-6 col-sm-12">
                                                    <img src="assets/img/avatars/Sergey-Azovskiy.jpg" class="user-avatar">
                                                    <span class="user-name">Bill Jackson</span>
                                                    <span class="user-at">at</span>
                                                    <span class="user-company">Mabna</span>
                                                </div>
                                                <div class="ticket-time  col-lg-4 col-sm-6 col-xs-12">
                                                    <div class="divider hidden-md hidden-sm hidden-xs"></div>
                                                    <i class="fa fa-clock-o"></i>
                                                    <span class="time">2 days Ago</span>
                                                </div>
                                                <div class="ticket-type  col-lg-2 col-sm-6 col-xs-12">
                                                    <span class="divider hidden-xs"></span>
                                                    <span class="type">Payment</span>
                                                </div>
                                                <div class="ticket-state bg-palegreen">
                                                    <i class="fa fa-check"></i>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="ticket-item">
                                            <div class="row">
                                                <div class="ticket-user col-lg-6 col-sm-12">
                                                    <img src="assets/img/avatars/John-Smith.jpg" class="user-avatar">
                                                    <span class="user-name">Eric Clapton</span>
                                                    <span class="user-at">at</span>
                                                    <span class="user-company">Musicker</span>
                                                </div>
                                                <div class="ticket-time  col-lg-4 col-sm-6 col-xs-12">
                                                    <div class="divider hidden-md hidden-sm hidden-xs"></div>
                                                    <i class="fa fa-clock-o"></i>
                                                    <span class="time">2 days Ago</span>
                                                </div>
                                                <div class="ticket-type  col-lg-2 col-sm-6 col-xs-12">
                                                    <span class="divider hidden-xs"></span>
                                                    <span class="type">Info</span>
                                                </div>
                                                <div class="ticket-state bg-yellow">
                                                    <i class="fa fa-info"></i>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>

                            </div>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <div class="ql-footer"></div>
                    %{--<qlnhatro:renderButton/>--}%
                </div>
            </div>
        </div>
    </div>
</div>
