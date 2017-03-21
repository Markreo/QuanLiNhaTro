<g:formRemote name="frm_add_renter" url="[controller: 'renter', action: 'saveAddRenter']" update="update_addrenter">
    <g:hiddenField name="room" value="${room.id}"/>
    <div id="update_addrenter"></div>
    <g:render template="new_renter"/>
    <div class="row">
        <div class="pull-right padding-right-20">
            <button type="submit" class="btn btn-dedault"><i class="fa fa-save"></i> Lưu</button>
            <a class="btn btn-default" onclick="bootbox.hideAll()"><i class="fa fa-times"></i> Hủy</a>
        </div>
    </div>
</g:formRemote>