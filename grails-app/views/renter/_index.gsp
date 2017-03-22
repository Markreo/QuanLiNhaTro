<%@ page import="com.quanlinhatro.Room" %>
<div class="widget">
    <div class="widget-header">
        <span class="widget-caption">
            <strong>Danh sách khách thuê trọ ${session.region.name}</strong>
        </span>
    </div>
    <div class="widget-body">
        <table class="table table-hover">
            <thead class="">
            <tr style="background: white">
                <th>
                    Họ và Tên
                </th>
                <th>
                    Giới Tính
                </th>
                <th>
                    Năm Sinh
                </th>
                <th>
                    Số Điện Thoại
                </th>
                <th>
                    Địa Chỉ
                </th>
                <th>
                    Phòng
                </th>
                <th></th>
            </tr>
            </thead>
            <tbody>
            <g:each in="${renters}" var="renter">
                <tr>
                <td><a rel="show_renter" href="${createLink(controller: 'renter', action: 'show',id: renter.id)}">${renter.fullname}</a></td>
                <td>${renter.sex.name}</td>
                <td>${renter.birthYear}</td>
                <td>${renter.phone}</td>
                <td>${renter.birthPlace}</td>
                <td>${rooms.find {renter in it.renters}?.name}</td>
                <td></td>
                </tr>
            </g:each>
            </tbody>
        </table>
    </div>
</div>

<script>
    $(document).ready(function() {
        $(document).on('click', 'a[rel="show_renter"]', function (e) {
            e.preventDefault();
            var url = this.href;
            $.post(url, function(html) {
                bootbox.dialog({
                    message: html,
                    title: 'Thông tin người thuê',
                    backdrop: true
                })
            })
        })
    })
</script>