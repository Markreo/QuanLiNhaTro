
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

                                    <a class="btn btn-default margin-left-20" href="${createLink(controller: 'room', action: 'create')}" rel="new-tab"><i class="fa fa-plus"></i> Thêm</a>

                                <div class="tickets-container" style="background: white">
                                    <ul class="tickets-list">
                                        <g:each in="${rooms}" var="r" status="i">
                                            <g:if test="${r.status == com.quanlinhatro.Room.Status.ARERENTING}">
                                                <li class="ticket-item">
                                                    <div class="row">
                                                        <div class="ticket-user col-md-4 col-sm-12">
                                                            <img src="${resource(dir:'assets/img', file: 'home_' + r.status.id + '.png')}" class="user-avatar">
                                                            <a class="user-name" rel="new-tab" href="${createLink(controller: 'room', action: 'update', id: r.id)}">Phòng ${r.name}</a>
                                                            <span class="user-at">-</span>
                                                            <span class="user-company">${r.status.name}</span>
                                                        </div>
                                                        <div class="ticket-time  col-md-3 col-sm-6 col-xs-6">
                                                            <div class="divider hidden-xs hidden-sm hidden-xs"></div>
                                                            <i class="fa fa-user"></i>
                                                            ${r.renters.size()} <span class="time"> người đang thuê</span>
                                                        </div>
                                                        <div class="ticket-time  col-md-4 col-sm-6 col-xs-6">
                                                            <div class="divider hidden-xs hidden-sm hidden-xs"></div>
                                                            <span class="time"> <g:formatNumber number="${r.leaseThisMonth?.total}" format="###,###,###" />  đến ngày ${r.dueDateThisMonth.format('dd/MM/yyyy')}</span>
                                                        </div>
                                                        <div class="ticket-type hidden-sm hidden-xs" style="position: absolute;right: 0; width: 90px">
                                                            <span class="divider hidden-xs"></span>
                                                            <span class="type">${r.status.action}</span>
                                                        </div>
                                                        <a class="ticket-state bg-darkorange" href="${createLink(controller: 'room', action: 'update', id: r.id)}" rel="new-tab">
                                                            <i class="fa fa-edit" style="padding-left: 2px; padding-top: 1px"></i>
                                                        </a>
                                                    </div>
                                                </li>
                                            </g:if>
                                            <g:if test="${r.status == com.quanlinhatro.Room.Status.NEW}">
                                                <li class="ticket-item">
                                                    <div class="row">
                                                        <div class="ticket-user col-md-4 col-sm-12">
                                                            <img src="${resource(dir:'assets/img', file: 'home_' + r.status.id + '.png')}" class="user-avatar">
                                                            <a class="user-name" rel="new-tab" href="${createLink(controller: 'room', action: 'update', id: r.id)}">Phòng ${r.name}</a>
                                                            <span class="user-at">-</span>
                                                            <span class="user-company">${r.status.name}  - giá phòng - ghi chú</span>
                                                        </div>
                                                        <div class="ticket-type hidden-sm hidden-xs" style="position: absolute;right: 0; width: 90px">
                                                            <span class="divider hidden-xs"></span>
                                                            <span class="type">${r.status.action}</span>
                                                        </div>
                                                        <a class="ticket-state bg-green" href="${createLink(controller: 'room', action: 'forRent', id: r.id)}" rel="new-tab">
                                                            <i class="fa fa-arrow-right"></i>
                                                        </a>
                                                    </div>
                                                </li>
                                            </g:if>
                                            <g:if test="${r.status == com.quanlinhatro.Room.Status.MORTGAGED}">
                                                <li class="ticket-item">
                                                    <div class="row">
                                                        <div class="ticket-user col-md-4 col-sm-12">
                                                            <img src="${resource(dir:'assets/img', file: 'home_' + r.status.id + '.png')}" class="user-avatar">
                                                            <a class="user-name" rel="new-tab" href="${createLink(controller: 'room', action: 'update', id: r.id)}">Phòng ${r.name}</a>
                                                            <span class="user-at">-</span>
                                                            <span class="user-company">${r.status.name}</span>
                                                        </div>
                                                        <div class="ticket-time  col-md-3 col-sm-6 col-xs-6">
                                                            <div class="divider hidden-xs hidden-sm hidden-xs"></div>
                                                            <i class="fa fa-money"></i>
                                                            <span class="time"> Đã cọc:  <g:formatNumber number="${r.price}" format="###,###,###" /> </span>
                                                        </div>
                                                        <div class="ticket-time  col-md-4 col-sm-6 col-xs-6">
                                                            <div class="divider hidden-xs hidden-sm hidden-xs"></div>
                                                            <span class="time"> Ngày đến ${r.dueDateThisMonth.format('dd/MM/yyyy')}</span>
                                                        </div>
                                                        <div class="ticket-type hidden-sm hidden-xs" style="position: absolute;right: 0; width: 90px">
                                                            <span class="divider hidden-xs"></span>
                                                            <span class="type">${r.status.action}</span>
                                                        </div>
                                                        <a class="ticket-state bg-azure"  rel="new-tab">
                                                            <i class="fa fa-check" style="padding-left: 2px; padding-top: 1px"></i>
                                                        </a>
                                                    </div>
                                                </li>
                                            </g:if>
                                        </g:each>
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
